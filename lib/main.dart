import 'dart:async';
import 'package:flora_care/common/plants_provider.dart';
import 'package:flutter/material.dart';

import 'package:flora_care/app.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      setupDependencies();
      
      print("Starting app...");
      runApp(const App());
    },
    (error, stack) {
      print("Error: $error\n$stack");
    },
  );
}

