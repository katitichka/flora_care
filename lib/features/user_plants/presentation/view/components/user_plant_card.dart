import 'package:flora_care/features/user_plants/domain/entities/user_plants_docs_response_entity.dart';
import 'package:flora_care/features/user_plants/presentation/bloc/user_plants_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/shared/services/notification_service.dart';

class UserPlantCard extends StatefulWidget {
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
  State<UserPlantCard> createState() => _UserPlantCardState();
}

class _UserPlantCardState extends State<UserPlantCard> {
  late UserPlantsDocsResponseEntity _currentPlant;
  late DateTime? _lastWatering;
  late int _wateringFreq;
  final NotificationService _notificationService = NotificationService();
  bool _hasNotification = false;

  @override
  void initState() {
    super.initState();
    _currentPlant = widget.userPlant;
    _lastWatering = _currentPlant.lastWateringDate;
    _wateringFreq = _currentPlant.plantData?.wateringFreq ?? 0;
    _initializeNotifications();
    _checkWateringNeedAndNotify();
  }

  Future<void> _initializeNotifications() async {
    await _notificationService.initialize();
    _hasNotification = await _notificationService.hasScheduledNotification(
      _currentPlant.id.hashCode,
    );
    if (mounted) {
      setState(() {});
    }
  }

  Color _getWaterIconColor() {
    if (_lastWatering == null) return Colors.red;
    final daysSinceWatering = DateTime.now().difference(_lastWatering!).inDays;

    if (daysSinceWatering < _wateringFreq) return Colors.green;
    if (daysSinceWatering == _wateringFreq) return Colors.orange;
    return Colors.red;
  }

  bool _needsWatering() {
    if (_lastWatering == null) return true;
    final daysSinceWatering = DateTime.now().difference(_lastWatering!).inDays;
    return daysSinceWatering >= _wateringFreq;
  }

  Future<void> _toggleNotification() async {
  try {
    if (_hasNotification) {
      await _notificationService.cancelReminder(_currentPlant.id.hashCode);
    } else {
      if (_wateringFreq > 0) {
        await _notificationService.scheduleWateringReminder(
          id: _currentPlant.id.hashCode,
          plantName: _currentPlant.userPlantName,
          wateringFreq: _wateringFreq,
        );
        
        if (_needsWatering()) {
          await _notificationService.showImmediateNotification(
            id: _currentPlant.id.hashCode,
            plantName: _currentPlant.userPlantName,
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Частота полива не установлена, уведомления невозможны'),
          ),
        );
        return;
      }
    }
    if (mounted) {
      setState(() {
        _hasNotification = !_hasNotification;
      });
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _hasNotification 
              ? 'Уведомления для ${_currentPlant.userPlantName} выключены' 
              : 'Уведомления для ${_currentPlant.userPlantName} включены',
        ),
      ),
    );
  } catch (e) {
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Ошибка при изменении уведомлений: $e')),
      );
    }
  }
}

  void _handleWaterPlant() async {
    final originalLastWatering = _lastWatering;

    setState(() => _lastWatering = DateTime.now());

    try {
      if (widget.onWater != null) {
        widget.onWater!(_currentPlant.id);
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Полив растения ${_currentPlant.userPlantName} записан',
          ),
        ),
      );
    } catch (e) {
      setState(() => _lastWatering = originalLastWatering);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Ошибка: $e')));
    }
  }
  Future<void> _checkWateringNeedAndNotify() async {
  if (_needsWatering() && _hasNotification) {
    await _notificationService.showImmediateNotification(
      id: _currentPlant.id.hashCode,
      plantName: _currentPlant.userPlantName,
    );
  }
}


  @override
  Widget build(BuildContext context) {
    return BlocListener<UserPlantsBloc, UserPlantsState>(
      listener: (context, state) {
        if (state is Loaded) {
          final updatedPlant = state.userPlants.firstWhere(
            (p) => p.id == _currentPlant.id,
            orElse: () => _currentPlant,
          );
          setState(() => _currentPlant = updatedPlant);
        }
      },
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: () => _showActionMenu(context, _currentPlant.id),
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
                        _currentPlant.plantData?.image != null
                            ? Image.network(
                              _currentPlant.plantData!.image,
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
                        _currentPlant.userPlantName,
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
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.water_drop, color: _getWaterIconColor()),
                  iconSize: 40,
                  tooltip: 'Записать полив',
                  onPressed: _handleWaterPlant,
                ),
                IconButton(
                icon: Icon(
                  _hasNotification ? Icons.notifications : Icons.notifications_off,
                  color: _hasNotification ? Colors.green : Colors.grey,
                ),
                iconSize: 24,
                tooltip: _hasNotification 
                    ? 'Уведомления включены - нажмите, чтобы выключить' 
                    : 'Уведомления выключены - нажмите, чтобы включить',
                onPressed: _toggleNotification,
              ),
                IconButton(
                  icon: const Icon(Icons.info_outline, color: Colors.green),
                  iconSize: 24,
                  tooltip: 'Информация о растении',
                  onPressed: () {
                    if (_currentPlant.plantData != null) {
                      Navigator.pushNamed(
                        context,
                        '/plant',
                        arguments: _currentPlant.plantData!,
                      );
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

  // Остальные методы (_showActionMenu, _confirmDelete, _showEditDialog) остаются без изменений
  void _showActionMenu(BuildContext context, String userPlantId) {
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
                leading: const Icon(Icons.edit, color: Colors.blue),
                title: const Text('Редактировать имя'),
                onTap: () {
                  Navigator.pop(context);
                  _showEditDialog(
                    context,
                    _currentPlant.id,
                    _currentPlant.userPlantName,
                  );
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.delete,
                  color: Color.fromARGB(255, 21, 156, 25),
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
                  widget.onDelete(_currentPlant.id);
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

  void _showEditDialog(
    BuildContext context,
    String plantId,
    String currentName,
  ) {
    final textController = TextEditingController(text: currentName);

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Edit Plant Name'),
            content: TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'Enter new plant name',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Отмена'),
              ),
              TextButton(
                onPressed: () {
                  if (textController.text.trim().isNotEmpty) {
                    context.read<UserPlantsBloc>().add(
                      UserPlantsEvent.updatePlantName(
                        userPlantId: plantId,
                        newName: textController.text.trim(),
                      ),
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text('Сохранить'),
              ),
            ],
          ),
    );
  }
}
