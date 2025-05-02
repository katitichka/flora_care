import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/features/dictionary/presentation/bloc/dictionary_bloc.dart';

class DictionaryScreen extends StatelessWidget {
  const DictionaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Загружаем растения при первом открытии экрана
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DictionaryBloc>().add(
            const DictionaryEvent.getAll(page: 1, limit: 20),
          );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Каталог растений'),
      ),
      body: BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (plants) => plants.isEmpty
                ? const Center(child: Text('Растения не найдены'))
                : ListView.builder(
                    itemCount: plants.length,
                    itemBuilder: (context, index) {
                      final plant = plants[index];
                      return Card(
                        margin: const EdgeInsets.all(8),
                        child: ListTile(
                          leading: plant.imageUrl != null
                              ? Image.network(
                                  plant.imageUrl!,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )
                              : const Icon(Icons.eco, size: 50),
                          title: Text(plant.commonName),
                          subtitle: Text(plant.scientificName),
                          trailing: const Icon(Icons.chevron_right),
                          onTap: () => _showPlantDetails(context, plant),
                        ),
                      );
                    },
                  ),
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Ошибка: $message'),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      context.read<DictionaryBloc>().add(
                            const DictionaryEvent.getAll(page: 1, limit: 20),
                          );
                    },
                    child: const Text('Повторить'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () {
          context.read<DictionaryBloc>().add(
                const DictionaryEvent.getAll(page: 1, limit: 20),
              );
        },
      ),
    );
  }

  void _showPlantDetails(BuildContext context, Plant plant) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (plant.imageUrl != null)
                Center(
                  child: Image.network(
                    plant.imageUrl!,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                plant.commonName,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                plant.scientificName,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(height: 16),
              _buildDetailRow(Icons.lightbulb, 'Освещение: ${plant.light}'),
              _buildDetailRow(Icons.thermostat, 
                  'Оптимальная температура: ${plant.optimalTemp}°C'),
              _buildDetailRow(Icons.water_drop, 
                  'Полив: каждые ${plant.wateringFreq} дней'),
              _buildDetailRow(Icons.opacity, 
                  'Влажность: ${plant.humidity}%'),
              const SizedBox(height: 16),
              if (plant.fertilizer.isNotEmpty)
                Text('Удобрение: ${plant.fertilizer}'),
              if (plant.transplant.isNotEmpty)
                Text('Пересадка: ${plant.transplant}'),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}