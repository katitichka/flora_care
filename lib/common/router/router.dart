import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/presentation/view/screens/dictionary_screen.dart';
import 'package:flora_care/shared/components/plant_card.dart';
import 'package:flutter/material.dart';

final routes = {
  '/': (context) => DictionaryScreen(),
  '/plant': (context) {
    final plant =
        ModalRoute.of(context)!.settings.arguments
            as DictionaryDocsResponseEntity;
    return PlantCard(plant: plant);
  },
};
