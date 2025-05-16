import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/features/diary/presentation/bloc/diary_bloc.dart';
import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';

class DiaryScreen extends StatelessWidget {
  final String plantName;

  const DiaryScreen({super.key, required this.plantName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Дневник растения "$plantName"')),
      body: BlocBuilder<DiaryBloc, DiaryState>(
        builder: (context, state) {
          return switch (state) {
            Loading() => const Center(child: CircularProgressIndicator()),
            Error(:final message) => Center(child: Text(message)),
            Loaded(:final plantEvents, :final plantNotes) => Column(
              children: [
                Expanded(
                  child: _DiarySection(
                    title: 'События',
                    entries: plantEvents
                      .where((e) => e.eventDate != null)
                      .toList()
                      ..sort((a, b) => b.eventDate!.compareTo(a.eventDate!)),
                    itemBuilder: (context, event) => ListTile(
                      title: Text('Событие: ${event.eventDate?.toLocal().toString().split(" ")[0] ?? "-"}'),
                      subtitle: Text('ID растения: ${event.userPlantId}'),
                    ),
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: _DiarySection(
                    title: 'Заметки',
                    entries: plantNotes
                      .where((e) => e.note != null)
                      .toList(),
                    itemBuilder: (context, note) => ListTile(
                      title: Text(note.note ?? ''),
                      subtitle: Text('ID растения: ${note.userPlantId}'),
                    ),
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

class _DiarySection extends StatelessWidget {
  final String title;
  final List<DiaryDocsResponseEntity> entries;
  final Widget Function(BuildContext, DiaryDocsResponseEntity) itemBuilder;

  const _DiarySection({
    required this.title,
    required this.entries,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
        Expanded(
          child: entries.isEmpty
              ? const Center(child: Text('Нет записей'))
              : ListView.separated(
                  itemCount: entries.length,
                  separatorBuilder: (_, __) => const Divider(height: 1),
                  itemBuilder: (context, index) => itemBuilder(context, entries[index]),
                ),
        ),
      ],
    );
  }
}
