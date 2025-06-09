import 'package:flora_care/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flora_care/features/authentication/presentation/view/screens/login_screen.dart';
import 'package:flora_care/features/authentication/presentation/view/screens/register_screen.dart';
import 'package:flora_care/features/diary/presentation/view/screens/diary_screen.dart';
import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/presentation/view/screens/dictionary_screen.dart';
import 'package:flora_care/features/user_plants/presentation/view/screens/user_plants_screen.dart';
import 'package:flora_care/mainScreen.dart';
import 'package:flora_care/shared/components/plant_card.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> getRoutes(AuthRepository authRepository) {
  return {
    '/': (context) {
      return authRepository.isAuthenticated 
          ? MainScreen(userId: authRepository.currentUserId ?? '') 
          : LoginScreen(authRepository: authRepository);
    },
    '/login': (context) => LoginScreen(
      authRepository: authRepository,
    ),
    '/register': (context) => RegisterScreen(
      authRepository: authRepository,
    ),
    '/diary': (context) {
      final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;
      final plantName = args?['plantName'] as String? ?? 'Без имени';
      final userPlantId = args?['userPlantId'] as String? ?? '';
      return DiaryScreen(plantName: plantName, userPlantId: userPlantId);
    },
    '/dictionary': (context) => DictionaryScreen(
      userId: authRepository.currentUserId ?? '',
    ),
    '/home': (context) => UserPlantsScreen(
      userId: authRepository.currentUserId ?? '',
      onAddPlant: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => MainScreen(userId: authRepository.currentUserId ?? ''),
          ),
        );
      },
    ),
    '/plant': (context) {
      final plant = ModalRoute.of(context)!.settings.arguments
          as DictionaryDocsResponseEntity?;
      if (plant != null) {
        return PlantCard(
          plant: plant,
          userId: authRepository.currentUserId ?? '',
        );
      }
      return const Scaffold(body: Center(child: Text("Непредвиденная ошибка, попробуйте позже.")));
    },
  };
}