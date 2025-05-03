import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pocketbase/pocketbase.dart';

import 'package:flora_care/app.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      /*await dotenv.load(fileName: ".env");

      final pb = PocketBase(dotenv.get('POCKETBASE_URL'));*/
      final pb = PocketBase('https://testovoe.pockethost.io');

      print("Starting app...");
  
      runApp(App(pb: pb));
    },
    (error, stack) {
      print("Error: $error\n$stack");
    },
  );
}
