import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';
import 'package:flora_care/features/diary/presentation/view/components/diary_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/features/diary/presentation/bloc/diary_bloc.dart';
import 'package:intl/intl.dart';

class DiaryScreen extends StatefulWidget {
  final String plantName;
  final String userPlantId;

  const DiaryScreen({
    super.key,
    required this.plantName,
    required this.userPlantId,
  });

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DiaryBloc>().add(
      DiaryEvent.getDiary(userPlantId: widget.userPlantId),
    );
  }

  Future<void> _addEvent(BuildContext context) async {
    final addedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2025),
      lastDate: DateTime.now(),
    );

    if (addedDate == null) return;

    final addedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (addedTime == null) return;

    final DateTime resultDate = DateTime(
      addedDate.year,
      addedDate.month,
      addedDate.day,
      addedTime.hour,
      addedTime.minute,
    );

    context.read<DiaryBloc>().add(
      DiaryEvent.addEvent(
        userPlantId: widget.userPlantId,
        eventDate: resultDate,
      ),
    );
  }

  Future<void> _addNote(BuildContext context) async {
    final noteController = TextEditingController();

    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Добавить заметку'),
        content: TextField(
          controller: noteController,
          autofocus: true,
          maxLines: null,
          decoration: const InputDecoration(
            hintText: 'Введите текст заметки',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(noteController.text.trim()),
            child: const Text('Добавить'),
          ),
        ],
      ),
    );

    if (result != null && result.isNotEmpty) {
      context.read<DiaryBloc>().add(
        DiaryEvent.addNote(userPlantId: widget.userPlantId, noteText: result),
      );
    }
  }

  void _showDeleteDialog(BuildContext context, DiaryDocsResponseEntity item) {
    final isEvent = item.eventDate != null;
    
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Подтвердите удаление'),
        content: Text('Вы уверены, что хотите удалить эту ${isEvent ? 'запись о поливе' : 'заметку'}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Отмена'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (isEvent) {
                context.read<DiaryBloc>().add(
                  DiaryEvent.modifyEvent(
                    userPlantId: widget.userPlantId,
                    isDelete: true,
                    eventId: item.id,
                  ),
                );
              } else {
                context.read<DiaryBloc>().add(
                  DiaryEvent.modifyNote(
                    userPlantId: widget.userPlantId,
                    isDelete: true,
                    noteId: item.id,
                  ),
                );
              }
            },
            child: const Text('Удалить', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final halfScreenHeight = (screenHeight - kToolbarHeight - 100) / 2; // Subtract app bar height and some padding

    return Scaffold(
      appBar: AppBar(title: const Text('Дневник')),
      body: BlocBuilder<DiaryBloc, DiaryState>(
        builder: (context, state) {
          return switch (state) {
            Loading() => const Center(child: CircularProgressIndicator()),
            Error(:final message) => Center(child: Text(message)),
            Loaded(:final plantEvents, :final plantNotes) => Column(
              children: [
                // Plant name with underline
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.plantName,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 100,
                        color: Colors.green,
                        margin: const EdgeInsets.only(bottom: 8),
                      ),
                    ],
                  ),
                ),
                
                // Watering history section (fixed height with internal scrolling)
                Container(
                  height: halfScreenHeight,
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'История полива',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => _addEvent(context),
                              tooltip: 'Добавить полив',
                            ),
                          ],
                        ),
                      ),
                      const Divider(color: Colors.green, height: 1),
                      Expanded(
                        child: plantEvents.isEmpty
                            ? const Center(child: Text('Нет записей о поливе'))
                            : ListView.builder(
                                itemCount: plantEvents.length,
                                itemBuilder: (context, index) {
                                  final event = plantEvents[index];
                                  return GestureDetector(
                                    onLongPress: () => _showDeleteDialog(context, event),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(DateFormat('dd.MM').format(event.eventDate!)),
                                              Text(DateFormat('HH:mm').format(event.eventDate!)),
                                            ],
                                          ),
                                        ),
                                        if (index != plantEvents.length - 1)
                                          const Divider(color: Colors.green, height: 1),
                                      ],
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                ),
                
                // Notes section (fixed height with internal scrolling)
                Container(
                  height: halfScreenHeight,
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Заметки',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => _addNote(context),
                              tooltip: 'Добавить заметку',
                            ),
                          ],
                        ),
                      ),
                      const Divider(color: Colors.green, height: 1),
                      Expanded(
                        child: plantNotes.where((e) => e.note != null).isEmpty
                            ? const Center(child: Text('Нет заметок'))
                            : ListView.builder(
                                itemCount: plantNotes.where((e) => e.note != null).length,
                                itemBuilder: (context, index) {
                                  final note = plantNotes.where((e) => e.note != null).toList()[index];
                                  return GestureDetector(
                                    onLongPress: () => _showDeleteDialog(context, note),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${DateFormat('dd.MM').format(DateTime.parse(note.created))}',
                                                style: const TextStyle(fontWeight: FontWeight.bold),
                                              ),
                                              const SizedBox(width: 8),
                                              Expanded(
                                                child: Text(note.note ?? ''),
                                              ),
                                            ],
                                          ),
                                        ),
                                        if (index != plantNotes.where((e) => e.note != null).length - 1)
                                          const Divider(color: Colors.green, height: 1),
                                      ],
                                    ),
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            _ => const SizedBox.shrink(),
          };
        },
      ),
    );
  }
}