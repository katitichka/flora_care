import 'package:flora_care/common/router/router.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:flora_care/features/dictionary/presentation/dictionary_provider.dart';

import 'package:flora_care/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  final DictionaryRepository dictionaryRepository;

  const App({
    super.key,
    required this.dictionaryRepository});
    
  @override
  Widget build(BuildContext context) {
    return DictionaryProvider(
      dictionaryRepository: dictionaryRepository,
      child: MaterialApp(
        theme: appTheme,
        initialRoute: '/',
        routes: routes),
    );
  }
}
