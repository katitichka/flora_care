import 'package:flora_care/features/user_plants/presentation/bloc/user_plants_bloc.dart';
import 'package:flora_care/features/user_plants/presentation/view/components/user_plant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPlantsScreen extends StatelessWidget {
  final VoidCallback? onAddPlant;
  const UserPlantsScreen({super.key, required this.onAddPlant, required String userId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Мои растения')),
      body: BlocConsumer<UserPlantsBloc, UserPlantsState>(
        listener: (context, state) {
          if (state is ActionSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is ActionFail) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        buildWhen:
            (prev, curr) => curr is! ActionSuccess && curr is! ActionFail,
        builder: (context, state) {
          switch (state) {
            case Initial():
              return const Center(child: Text('Ничего не загружено'));
            case Loading():
              return const Center(child: CircularProgressIndicator());
            case Error(message: final msg):
              return Center(child: Text('Ошибка: $msg'));
            case Loaded(userPlants: final userPlants):
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
                                    context.read<UserPlantsBloc>().add(
                                      UserPlantsEvent.deleteUserPlant(
                                        userPlantId: userPlantId,
                                      ),
                                    );
                                  },
                                  onWater:
                                      (id) =>
                                          context.read<UserPlantsBloc>().add(
                                            UserPlantsEvent.waterPlant(
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

            case ActionSuccess():
              return const SizedBox.shrink();
            case ActionFail():
              return const Center(child: Text('Произошла ошибка при действии'));
          }
        },
      ),
    );
  }
}
