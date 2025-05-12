import 'package:flora_care/common/router/router.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:flora_care/features/dictionary/presentation/dictionary_provider.dart';
import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';
import 'package:flora_care/features/user_plants/presentation/user_plants_povider.dart';

import 'package:flora_care/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final DictionaryRepository dictionaryRepository;
  final UserPlantsRepository userPlantsRepository;

  const App({
    super.key, 
    required this.dictionaryRepository,
    required this.userPlantsRepository});

  @override
  Widget build(BuildContext context) {
    return DictionaryProvider(
      dictionaryRepository: dictionaryRepository,
      child: UserPlantsProvider(
        userPlantsRepository: userPlantsRepository,
        child: MaterialApp(
          theme: appTheme,
          initialRoute: '/',
          routes: routes,),
      ),
    );
  }
}
