import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';
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
      builder:
          (context) => AlertDialog(
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
                onPressed:
                    () => Navigator.of(context).pop(noteController.text.trim()),
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
      builder:
          (context) => AlertDialog(
            title: const Text('Подтвердите удаление'),
            content: Text(
              'Вы уверены, что хотите удалить эту ${isEvent ? 'запись о поливе' : 'заметку'}?',
            ),
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
                child: const Text(
                  'Удалить',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Дневник: ${widget.plantName}')),
      body: BlocBuilder<DiaryBloc, DiaryState>(
        builder: (context, state) {
          if (state is Loading)
            return const Center(child: CircularProgressIndicator());
          if (state is Error) return Center(child: Text(state.message));
          if (state is Loaded) return _buildContent(context, state);
          return const SizedBox();
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, Loaded state) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final sectionHeight = constraints.maxHeight * 0.45;

        return SingleChildScrollView(
          child: Column(
            children: [
              // История полива
              _buildEventSection(
                context,
                height: sectionHeight,
                events: state.plantEvents,
                onAdd: () => _addEvent(context),
              ),

              const SizedBox(height: 16),

              // Заметки
              _buildNotesSection(
                context,
                height: sectionHeight,
                notes: state.plantNotes.where((n) => n.note != null).toList(),
                onAdd: () => _addNote(context),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildEventSection(
    BuildContext context, {
    required double height,
    required List<DiaryDocsResponseEntity> events,
    required VoidCallback onAdd,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    'История полива',
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(icon: const Icon(Icons.add), onPressed: onAdd),
                ],
              ),
            ),
            Expanded(
              child:
                  events.isEmpty
                      ? const Center(child: Text('Нет записей о поливе'))
                      : ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: events.length,
                        itemBuilder: (context, index) {
                          final event = events[index];
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      DateFormat(
                                        'dd.MM',
                                      ).format(event.eventDate!),
                                    ),
                                    Text(
                                      DateFormat(
                                        'HH:mm',
                                      ).format(event.eventDate!),
                                    ),
                                  ],
                                ),
                              ),
                              if (index != events.length - 1)
                                const Divider(
                                  height: 1,
                                  indent: 16,
                                  endIndent: 16,
                                  color: Colors.green,
                                ),
                            ],
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotesSection(
    BuildContext context, {
    required double height,
    required List<DiaryDocsResponseEntity> notes,
    required VoidCallback onAdd,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: height),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 2.0),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Text(
                    'Заметки',
                    style: TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(icon: const Icon(Icons.add), onPressed: onAdd),
                ],
              ),
            ),
            Expanded(
              child:
                  notes.isEmpty
                      ? const Center(child: Text('Нет заметок'))
                      : ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: notes.length,
                        itemBuilder: (context, index) {
                          final note = notes[index];
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text(
                                      DateFormat(
                                        'dd.MM',
                                      ).format(DateTime.parse(note.created)),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(note.note ?? ''),
                                  ],
                                ),
                              ),
                              if (index != notes.length - 1)
                                const Divider(
                                  height: 1,
                                  indent: 16,
                                  endIndent: 16,
                                  color: Colors.green,
                                ),
                            ],
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
