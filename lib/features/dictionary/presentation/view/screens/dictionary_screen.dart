import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/features/dictionary/presentation/bloc/dictionary_bloc.dart';

class DictionaryScreen extends StatelessWidget {
  const DictionaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Словарь растений')),
      body: BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
          switch (state) {
            case Initial():
              return const Center(child: Text('Ничего не загружено'));
            case Loading():
              return const Center(child: CircularProgressIndicator());
            case Error(message: final msg):
              return Center(child: Text('Ошибка: $msg'));
            case Loaded(plants: final plants):
              return ListView.builder(
                itemCount: plants.length,
                itemBuilder: (context, index) {
                  final plant = plants[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: ListTile(
                      leading: plant.imageUrl != null 
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                plant.imageUrl!,
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) => 
                                    const Icon(Icons.image_not_supported),
                              ),
                            )
                          : const Icon(Icons.local_florist, size: 40),
                      title: Text(plant.scientificName),
                      subtitle: Text(plant.commonName),
                      onTap: () {
                        // Действие при нажатии
                      },
                    )
                  
                  );
                },
              );
              default:
                return const SizedBox.shrink();
          }
        },
        
      ),
    
    );
  }
}
