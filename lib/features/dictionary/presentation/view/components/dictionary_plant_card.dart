import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/user_plants/presentation/bloc/user_plants_bloc.dart';
import 'package:flora_care/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DictionaryPlantCard extends StatelessWidget {
  final DictionaryDocsResponseEntity plant;
  final VoidCallback? onTap;

  const DictionaryPlantCard({super.key, required this.plant, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 115,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 80,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      plant.image,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (context, error, stackTrace) => Container(
                            color: Colors.grey[200],
                            child: const Icon(
                              Icons.image_not_supported,
                              size: 40,
                            ),
                          ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ), // Отступ между изображением и текстом
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        plant.scientificName,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        plant.commonName,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Color.fromARGB(255, 0, 89, 33),
                  ),
                  onPressed: () async {
                    final userId = pocketBase.authStore.model?.id ?? '';
                    final textController = TextEditingController();

                    final userPlantName = await showDialog<String>(
                      context: context,
                      builder:
                          (context) => AlertDialog(
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
                                      const SnackBar(
                                        content: Text('Введите имя растения'),
                                      ),
                                    );
                                    return;
                                  }
                                  final isUnique = await context
                                      .read<UserPlantsBloc>()
                                      .isPlantNameUnique(
                                        textController.text,
                                        userId,
                                      );
                                  if (!isUnique) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Растение с такм именем уже существует',
                                        ),
                                      ),
                                    );
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
                          SnackBar(
                            content: Text(
                              'Ошибка при добавлении: ${e.toString()}',
                            ),
                          ),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
