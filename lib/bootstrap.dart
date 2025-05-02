import 'package:pocketbase/pocketbase.dart';
import 'package:flutter/material.dart';
import 'package:flora_care/app.dart';


Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized(); 
  
  final pb = PocketBase('https://testovoe.pockethost.io');
  
  runApp(App(pb: pb)); 
}