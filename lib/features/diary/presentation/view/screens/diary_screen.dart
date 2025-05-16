import 'package:flora_care/features/diary/presentation/view/components/diary_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/features/diary/presentation/bloc/diary_bloc.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Дневник растения "${widget.plantName}"')),
      body: BlocBuilder<DiaryBloc, DiaryState>(
        builder: (context, state) {
          return switch (state) {
            Loading() => const Center(child: CircularProgressIndicator()),
            Error(:final message) => Center(child: Text(message)),
            Loaded(:final plantEvents, :final plantNotes) => Column(
              children: [
                Expanded(
                  child: DiarySection(
                    title: 'События',
                    entries: plantEvents,
                    itemBuilder:
                        (context, event) => ListTile(
                          title: Text(
                            'Событие: ${event.eventDate?.toLocal().toString().split(" ")[0] ?? "-"}',
                          ),
                        ),
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: DiarySection(
                    title: 'Заметки',
                    entries: plantNotes.where((e) => e.note != null).toList(),
                    itemBuilder:
                        (context, note) =>
                            ListTile(title: Text(note.note ?? '')),
                  ),
                ),
              ],
            ),
            _ => const SizedBox.shrink(),
          };
        },
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            heroTag: 'add_event',
            onPressed: () => _addEvent(context),
            icon: const Icon(Icons.event),
            label: const Text('Добавить событие'),
          ),
          const SizedBox(height: 12),
          FloatingActionButton.extended(
            heroTag: 'add_note',
            onPressed: () => _addNote(context),
            icon: const Icon(Icons.note_add),
            label: const Text('Добавить заметку'),
          ),
        ],
      ),
    );
  }
}