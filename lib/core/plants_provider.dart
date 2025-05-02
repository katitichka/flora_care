import 'package:flora_care/features/dictionary/data/repositoties/dictionary_repository_impl.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:pocketbase/pocketbase.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Регистрируем PocketBase как синглтон
  getIt.registerSingleton<PocketBase>(PocketBase('https://testovoe.pockethost.io'));

  getIt.registerSingleton<DictionaryRepository>(DictionaryRepositoryImpl(getIt<PocketBase>()));
}