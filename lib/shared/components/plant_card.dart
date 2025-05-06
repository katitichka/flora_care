import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  final DictionaryDocsResponseEntity plant;

  const PlantCard({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(plant.commonName)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(plant.image),
            const SizedBox(height: 16),
            Text(
              plant.scientificName,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Оптимальная\nтемпература:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(plant.optimalTemp.toString()),
          ],
        ),
      ),
    );
  }
}