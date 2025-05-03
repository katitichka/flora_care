import 'package:flora_care/features/dictionary/data/repositoties/dictionary_repository_impl.dart';
import 'package:flora_care/features/dictionary/presentation/bloc/dictionary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocketbase/pocketbase.dart';

class DictionaryProvider extends StatelessWidget {
  final Widget child;
  final PocketBase pb;
 const DictionaryProvider({
    required this.pb,
    required this.child,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DictionaryRepositoryImpl(pb),
        ),
      ],
      child: BlocProvider(
        create: (context) => DictionaryBloc(
          dictionaryRepository: context.read<DictionaryRepositoryImpl>(),
        )..add(const DictionaryEvent.getAll(page: 1, limit: 10)),
        child: child,
      ),
    );
  }
}