import 'dart:async';
import 'package:flora_care/features/authentication/data/data_providers/implementations/auth_data_provider_impl.dart';
import 'package:flora_care/features/authentication/data/repositories/auth_repository_impl.dart';
import 'package:flora_care/features/diary/data/data_providers.dart/implementations/diary_data_provider_impl.dart';
import 'package:flora_care/features/diary/data/repositories/diary_repository_impl.dart';
import 'package:flora_care/features/dictionary/data/data_poviders/implementations/dictionary_data_provider_impl.dart';
import 'package:flora_care/features/dictionary/data/repositoties/dictionary_repository_impl.dart';
import 'package:flora_care/features/user_plants/data/data_providers/implementations/user_plant_data_provider_impl.dart';
import 'package:flora_care/features/user_plants/data/repositories/user_plants_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flora_care/app.dart';
import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';
Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final prefs = await SharedPreferences.getInstance();
      final pocketBase = PocketBase('https://testovoe.pockethost.io');
      
      final authDataProvider = AuthDataProviderImpl(pocketBase, prefs);
      await authDataProvider.tryRestoreSession();

      final dictionaryDataProvider = DictionaryDataProviderImpl(
        pocketBase: pocketBase,
      );
      final dictionaryRepository = DictionaryRepositoryImpl(
        dictionaryDataProvider: dictionaryDataProvider,
      );
      
      final userPlantsDataProvider = UserPlantDataProviderImpl(
        pocketBase: pocketBase,
      );
      final userPlantsRepository = UserPlantsRepositoryImpl(
        userPlantsDataProvider: userPlantsDataProvider,  
      );
      
      final diaryDataProvider = DiaryDataProviderImpl(
        pocketBase: pocketBase,
      );
      final diaryRepository = DiaryRepositoryImpl(
        diaryDataProvider: diaryDataProvider,
      );
      
      final authRepository = AuthRepositoryImpl(authDataProvider);

      runApp(
        App(
          dictionaryRepository: dictionaryRepository,
          userPlantsRepository: userPlantsRepository,
          diaryRepository: diaryRepository,
          authRepository: authRepository,
        ),
      );
    },
    (error, stack) {
      print("Error: $error\n$stack");
    },
  );
}