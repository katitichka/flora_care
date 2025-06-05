import 'package:flora_care/features/authentication/presentation/bloc/auth_bloc.dart' as auth_bloc;
import 'package:flora_care/features/user_plants/presentation/bloc/user_plants_bloc.dart' as user_plants_bloc;
import 'package:flora_care/features/user_plants/presentation/view/components/user_plant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPlantsScreen extends StatelessWidget {
  final VoidCallback? onAddPlant;
  const UserPlantsScreen({super.key, required this.onAddPlant, required String userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Мои растения'),
        actions: [
          IconButton(
            tooltip: 'Выйти',
            icon: const Icon(Icons.logout),
            onPressed: () => _showLogoutConfirmation(context),
          ),
        ],
      ),
      body: BlocConsumer<user_plants_bloc.UserPlantsBloc, user_plants_bloc.UserPlantsState>(
        listener: (context, state) {
          if (state is user_plants_bloc.ActionSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is user_plants_bloc.ActionFail) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          switch (state) {
            case user_plants_bloc.Initial():
              return const Center(child: Text('Ничего не загружено'));
            case user_plants_bloc.Loading():
              return const Center(child: CircularProgressIndicator());
            case user_plants_bloc.Error(message: final msg):
              return Center(child: Text('Ошибка: $msg'));
            case user_plants_bloc.Loaded(userPlants: final userPlants):
              return Column(
                children: [
                  Expanded(
                    child:
                        userPlants.isEmpty
                            ? const Center(
                              child: Text('У вас пока нет растений'),
                            )
                            : ListView.builder(
                              itemCount: userPlants.length,
                              itemBuilder: (context, index) {
                                return UserPlantCard(
                                  userPlant: userPlants[index],
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      '/diary',
                                      arguments: {
                                        'plantName':
                                            userPlants[index].userPlantName,
                                        'userPlantId': userPlants[index].id,
                                      },
                                    );
                                  },
                                  onDelete: (userPlantId) {
                                    context.read<user_plants_bloc.UserPlantsBloc>().add(
                                      user_plants_bloc.UserPlantsEvent.deleteUserPlant(
                                        userPlantId: userPlantId,
                                      ),
                                    );
                                  },
                                  onWater:
                                      (id) =>
                                          context.read<user_plants_bloc.UserPlantsBloc>().add(
                                            user_plants_bloc.UserPlantsEvent.waterPlant(
                                              userPlantId: id,
                                            ),
                                          ),
                                );
                              },
                            ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 89, 33),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                        ),
                        onPressed: onAddPlant,
                        child: const Text(
                          'Добавить растение',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              );

            case user_plants_bloc.ActionSuccess():
              return const SizedBox.shrink();
            case user_plants_bloc.ActionFail():
              return const Center(child: Text('Произошла ошибка при действии'));
          }
        },
      ),
    );
  }
  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Выход из аккаунта'),
          content: const Text('Вы уверены, что хотите выйти?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Отмена'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _logout(context);
              },
              child: const Text('Выйти'),
            ),
          ],
        );
      },
    );
  }
  void _logout(BuildContext context) {
    context.read<auth_bloc.AuthBloc>().add(const auth_bloc.AuthEvent.logout());
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/',
      (route) => false,
    );
  }
}
