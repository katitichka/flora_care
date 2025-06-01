import 'package:flora_care/features/diary/domain/repositories/diary_repository.dart';
import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';
import 'package:flora_care/features/user_plants/presentation/bloc/user_plants_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPlantsProvider extends StatelessWidget {
  final Widget child;
  final UserPlantsRepository userPlantsRepository;
  final DiaryRepository diaryRepository;

  const UserPlantsProvider({
    required this.child,
    required this.userPlantsRepository,
    required this.diaryRepository,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserPlantsBloc(
        userPlantsRepository: userPlantsRepository,
        diaryRepository: diaryRepository,
      )..add(const UserPlantsEvent.getAllUserPlants()),
      child: child,
    );
  }
}
