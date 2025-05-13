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
                    context.read<UserPlantsBloc>().add(
                      UserPlantsEvent.addUserPlant(
                        plantId: plant.id,
                        userId: userId,
                        userPlantName: plant.commonName,
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Растение добавлено в "Мои растения"'),
                      ),
                    );

                    Navigator.pushReplacementNamed(context, '/home');
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
