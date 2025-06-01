import 'dart:async';
import 'package:flora_care/features/diary/data/data_providers.dart/implementations/diary_data_provider_impl.dart';
import 'package:flora_care/features/diary/data/repositories/diary_repository_impl.dart';
import 'package:flora_care/features/dictionary/data/data_poviders/implementations/dictionary_data_provider_impl.dart';
import 'package:flora_care/features/dictionary/data/repositoties/dictionary_repository_impl.dart';
import 'package:flora_care/features/user_plants/data/data_providers/implementations/user_plant_data_provider_impl.dart';
import 'package:flora_care/features/user_plants/data/repositories/user_plants_repository_impl.dart';
import 'package:flutter/material.dart';

import 'package:flora_care/app.dart';
import 'package:pocketbase/pocketbase.dart';

final pocketBase = PocketBase('https://testovoe.pockethost.io');
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

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      runApp(
        App(
          dictionaryRepository: dictionaryRepository,
          userPlantsRepository: userPlantsRepository,
          diaryRepository: diaryRepository,
        ),
      );
    },
    (error, stack) {
      print("Error: $error\n$stack");
    },
  );
}
