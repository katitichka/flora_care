import 'package:flora_care/common/router/router.dart';
import 'package:flora_care/features/dictionary/presentation/dictionary_provider.dart';

import 'package:flora_care/theme.dart';
import 'package:flutter/material.dart';
import 'package:pocketbase/pocketbase.dart';

class App extends StatelessWidget {
  final PocketBase pb;

  const App({super.key, required this.pb});

  @override
  Widget build(BuildContext context) {
    return DictionaryProvider(
      pb: pb,
      child: MaterialApp(
        theme: appTheme,
        routes: routes,
      ),
    );
  }
}
