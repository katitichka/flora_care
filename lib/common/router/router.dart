import 'package:flora_care/features/authentication/presentation/view/screens/login_screen.dart';
import 'package:flora_care/features/authentication/presentation/view/screens/register_screen.dart';
import 'package:flora_care/features/diary/presentation/view/screens/diary_screen.dart';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/presentation/view/screens/dictionary_screen.dart';
import 'package:flora_care/features/user_plants/presentation/view/screens/user_plants_screen.dart';
import 'package:flora_care/main.dart';
import 'package:flora_care/shared/components/plant_card.dart';
import 'package:flora_care/shared/mainScreen.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) {
    return pocketBase.authStore.isValid ? const MainScreen() : const LoginScreen();
  },
  '/login': (context) => const LoginScreen(),
  '/register': (context) => const RegisterScreen(),
  '/diary': (context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    final plantName = args?['plantName'] as String? ?? 'Без имени';
    final userPlantId = args?['userPlantId'] as String? ?? '';

    return DiaryScreen(plantName: plantName, userPlantId: userPlantId);
  },

  '/dictionary': (context) => DictionaryScreen(),
  '/home': (context) => UserPlantsScreen(
  onAddPlant: () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const MainScreen()));
  },
),
  '/plant': (context) {
    final plant =
        ModalRoute.of(context)!.settings.arguments
            as DictionaryDocsResponseEntity?;
    if (plant != null) {
      return PlantCard(plant: plant);
    } else {
      return const Scaffold(body: Center(child: Text("Invalid plant data!")));
    }
  },
};
