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
                  return ListTile(
                    title: Text(plant.commonName),
                    subtitle: Text(plant.scientificName),
                  );
                },
              );
              default:
                return const SizedBox.shrink();
          }
        },
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<DictionaryBloc>().add(
                const DictionaryEvent.getAll(page: 1, limit: 50),
              );
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
