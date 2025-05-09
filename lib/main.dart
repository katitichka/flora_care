import 'dart:async';
import 'package:flora_care/features/dictionary/data/data_poviders/implementations/dictionary_data_provider_impl.dart';
import 'package:flora_care/features/dictionary/data/repositoties/dictionary_repository_impl.dart';
import 'package:flora_care/features/user_plants/data/DTOs/user_plants_docs_response_dto.dart';
import 'package:flutter/material.dart';

import 'package:flora_care/app.dart';
import 'package:pocketbase/pocketbase.dart';

final pocketBase = PocketBase('https://testovoe.pockethost.io');
Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      final authData = await pocketBase
          .collection('users')
          .authWithPassword('testemail@email.com', 'test12345');

      final dictionaryDataProvider = DictionaryDataProviderImpl(
        pocketBase: pocketBase,
      );
      final dictionaryRepository = DictionaryRepositoryImpl(
        dictionaryDataProvider: dictionaryDataProvider,
      );

      final userPlant = await pocketBase.collection('user_plants').getList();
      final resUserPlants = userPlant.items.map((item) {
        final dto = UserPlantsDocsResponseDto.fromJson(item.toJson());
        print('UserPlants $dto');
      });
      
      // print("Starting app...");

      runApp(App(dictionaryRepository: dictionaryRepository));
    },
    (error, stack) {
      print("Error: $error\n$stack");
    },
  );
}
