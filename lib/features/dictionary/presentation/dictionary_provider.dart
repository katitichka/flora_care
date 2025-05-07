import 'package:flora_care/features/dictionary/domain/repositories/dictionary_repository.dart';
import 'package:flora_care/features/dictionary/presentation/bloc/dictionary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DictionaryProvider extends StatelessWidget {
  final Widget child;
  final DictionaryRepository dictionaryRepository;

  const DictionaryProvider({
    required this.child, 
    super.key, 
    required this.dictionaryRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              DictionaryBloc(dictionaryRepository: dictionaryRepository)
                ..add(const DictionaryEvent.getAll(page: 1, limit: 10)),
      child: child,
    );
  }
}
