import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';
import 'package:flora_care/features/diary/presentation/bloc/diary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiaryProvider extends StatelessWidget {
  final Widget child;
  final DiaryRepository diaryRepository;

  const DiaryProvider({
    required this.child, 
    super.key, 
    required this.diaryRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              DiaryBloc(diaryRepository: diaryRepository)
                ..add(const DiaryEvent.getDiary()),
      child: child,
    );
  }
}
