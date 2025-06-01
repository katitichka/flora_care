import 'package:flora_care/common/router/router.dart';
import 'package:flora_care/features/authentication/domain/repositories/auth_repository.dart';
import 'package:flora_care/features/authentication/presentation/view/auth_provider.dart';
import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';
import 'package:flora_care/features/diary/presentation/bloc/diary_bloc.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:flora_care/features/dictionary/presentation/dictionary_provider.dart';
import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';
import 'package:flora_care/features/user_plants/presentation/user_plants_povider.dart';
import 'package:flora_care/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final DictionaryRepository dictionaryRepository;
  final UserPlantsRepository userPlantsRepository;
  final DiaryRepository diaryRepository;
  final AuthRepository authRepository;

  const App({
    super.key,
    required this.dictionaryRepository,
    required this.userPlantsRepository,
    required this.diaryRepository,
    required this.authRepository,
  });

  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      authRepository: authRepository,
      child: DictionaryProvider(
        dictionaryRepository: dictionaryRepository,
        child: UserPlantsProvider(
          userPlantsRepository: userPlantsRepository,
          diaryRepository: diaryRepository,
          child: BlocProvider(
            create: (_) => DiaryBloc(diaryRepository: diaryRepository),
            child: MaterialApp(
              theme: appTheme,
              initialRoute: '/',
              onGenerateRoute: (settings) {
                final routes = getRoutes(authRepository);
                final builder = routes[settings.name];
                if (builder != null) {
                  return MaterialPageRoute(
                    builder: (context) => builder(context),
                    settings: settings,
                  );
                }
                return MaterialPageRoute(
                  builder: (_) => const Scaffold(
                    body: Center(child: Text('Page not found')),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}