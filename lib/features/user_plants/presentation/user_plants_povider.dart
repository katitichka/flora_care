import 'package:flora_care/features/user_plants/domain/repositories/user_plants_repository.dart';
import 'package:flora_care/features/user_plants/presentation/bloc/user_plants_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPlantsProvider extends StatelessWidget {
  final Widget child;
  final UserPlantsRepository userPlantsRepository;

  const UserPlantsProvider({
    required this.child, 
    super.key, 
    required this.userPlantsRepository});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              UserPlantsBloc(userPlantsRepository: userPlantsRepository)
                ..add(const UserPlantsEvent.getAllUserPlants(page: 1, limit: 10)),
      child: child,
    );
  }
}
