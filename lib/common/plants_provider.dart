
import 'package:flora_care/features/dictionary/data/data_poviders/dictionary_data_provider.dart';
import 'package:flora_care/features/dictionary/data/data_poviders/implementations/dictionary_data_provider_impl.dart';
import 'package:flora_care/features/dictionary/data/repositoties/dictionary_repository_impl.dart';
import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:pocketbase/pocketbase.dart';

final getIt = GetIt.instance;

void setupDependencies() {

  getIt.registerSingleton<PocketBase>(PocketBase('https://testovoe.pockethost.io'));

  getIt.registerSingleton<DictionaryDataProvider>(
      DictionaryDataProviderImpl(pocketBase: getIt<PocketBase>()),
    );

  getIt.registerSingleton<DictionaryRepository>(
    DictionaryRepositoryImpl(dictionaryDataProvider: getIt<DictionaryDataProvider>()),
  );
}