import 'package:flora_care/features/authentication/presentation/view/screens/login_screen.dart';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/presentation/view/screens/dictionary_screen.dart';
import 'package:flora_care/features/user_plants/presentation/view/screens/user_plants_screen.dart';
import 'package:flora_care/main.dart';
import 'package:flora_care/shared/components/plant_card.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) {
    final isAuthenticated = pocketBase.authStore.isValid;
    return isAuthenticated ? const DictionaryScreen() : const LoginScreen();
  },
  '/dictionary': (context) => DictionaryScreen(),
  '/home': (context) => UserPlantsScreen(),
  '/plant': (context) {
    final plant = ModalRoute.of(context)!.settings.arguments as DictionaryDocsResponseEntity?;
    if (plant != null) {
      return PlantCard(plant: plant); 
    } else {
      return const Scaffold(body: Center(child: Text("Invalid plant data!")));
    }
  },
};
