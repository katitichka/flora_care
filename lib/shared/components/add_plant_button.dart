import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/user_plants/presentation/bloc/user_plants_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPlantButton {
  final DictionaryDocsResponseEntity plant;
  final String userId;

  const AddPlantButton({required this.plant, required this.userId});

  Future<void> onPressed(BuildContext context) async {
    final textController = TextEditingController();

    final userPlantName = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Дайте имя растению'),
        content: TextField(
          controller: textController,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Введите уникальное имя растения',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () async {
              if (textController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Введите имя растения')),
                );
                return;
              }
              final isUnique = await context
                  .read<UserPlantsBloc>()
                  .isPlantNameUnique(textController.text, userId);
              if (!isUnique) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Растение с таким именем уже существует'),
                  ),
                );
                return;
              } else {
                Navigator.pop(context, textController.text);
              }
            },
            child: const Text('Готово'),
          ),
        ],
      ),
    );

    if (userPlantName != null && userPlantName.isNotEmpty) {
      try {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 10),
                Text('Добавляем растение...'),
              ],
            ),
            duration: Duration(seconds: 2),
          ),
        );
        
        final isUnique = await context
            .read<UserPlantsBloc>()
            .isPlantNameUnique(userPlantName, userId);

        if (!isUnique) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Растение с таким именем уже существует'),
            ),
          );
          return;
        }

        context.read<UserPlantsBloc>().add(
          UserPlantsEvent.addUserPlant(
            plantId: plant.id,
            userId: userId,
            userPlantName: userPlantName,
          ),
        );

        await Future.delayed(const Duration(seconds: 1));

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Растение добавлено')),
        );

        Navigator.pushReplacementNamed(context, '/');
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Ошибка при добавлении: ${e.toString()}')),
        );
      }
    }
  }
}