import 'package:flora_care/common/router/router.dart';
import 'package:flora_care/features/dictionary/presentation/dictionary_provider.dart';

import 'package:flora_care/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key}); 

  @override
  Widget build(BuildContext context) {
    return DictionaryProvider(
      child: MaterialApp(
        theme: appTheme,
        routes: routes,
      ),
    );
  }
}