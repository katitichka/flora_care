import 'dart:async';
import 'package:flora_care/features/dictionary/data/data_poviders/implementations/dictionary_data_provider_impl.dart';
import 'package:flora_care/features/dictionary/data/repositoties/dictionary_repository_impl.dart';
import 'package:flutter/material.dart';

import 'package:flora_care/app.dart';
import 'package:pocketbase/pocketbase.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final pocketBase = PocketBase('https://testovoe.pockethost.io');
      final dictionaryDataProvider = DictionaryDataProviderImpl(
        pocketBase: pocketBase,
      );
      final dictionaryRepository = DictionaryRepositoryImpl(
        dictionaryDataProvider: dictionaryDataProvider,
      );
      print("Starting app...");
      runApp(App(dictionaryRepository: dictionaryRepository,));
    },
    (error, stack) {
      print("Error: $error\n$stack");
    },
  );
}
