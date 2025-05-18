import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';
import 'package:flutter/material.dart';

class UserPlantCard extends StatelessWidget {
  final UserPlantsDocsResponseEntity userPlant;
  final VoidCallback? onTap;
  final Function(String) onDelete;
  final void Function(String userPlantId)? onWater;

  const UserPlantCard({
    super.key,
    required this.userPlant,
    this.onTap,
    required this.onDelete,
    this.onWater,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: () => _showDeleteMenu(context, userPlant.id),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: Color.fromARGB(255, 0, 89, 33),
            width: 2,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 115,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: SizedBox(
                  width: 80,
                  height: 80,
                  child:
                      userPlant.plantData?.image != null
                          ? Image.network(
                            userPlant.plantData!.image,
                            fit: BoxFit.cover,
                            errorBuilder:
                                (context, error, stackTrace) => Container(
                                  color: Colors.grey[200],
                                  child: const Center(
                                    child: Icon(
                                      Icons.image_not_supported,
                                      size: 30,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                          )
                          : Container(),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      userPlant.userPlantName,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                  ],
                ),
              ),
              IconButton(
                icon: const Icon(Icons.water_drop, color: Colors.blue),
                iconSize: 40,
                tooltip: 'Записать полив',
                onPressed: () {
                  if (onWater != null) {
                    onWater!(userPlant.id);
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Полив растения ${userPlant.userPlantName} записан',
                      ),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteMenu(BuildContext context, String userPlantId) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15),
              ListTile(
                leading: const Icon(
                  Icons.delete,
                  color: const Color.fromARGB(255, 21, 156, 25),
                ),
                title: const Text(
                  'Удалить растение',
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {
                  Navigator.pop(context);
                  _confirmDelete(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _confirmDelete(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Подтверждение'),
            content: const Text(
              'Вы уверены, что хотите удалить растения из списка ваших растений?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Отмена'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  onDelete(userPlant.id);
                },
                child: const Text(
                  'Удалить',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
    );
  }
}
