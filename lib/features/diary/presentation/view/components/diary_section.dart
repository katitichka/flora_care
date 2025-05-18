import 'package:flora_care/features/diary/domain/entities/diary_docs_response_entity.dart';
import 'package:flutter/material.dart';

class DiarySection extends StatelessWidget {
  final List<DiaryDocsResponseEntity> entries;
  final Widget Function(BuildContext, DiaryDocsResponseEntity) itemBuilder;

  const DiarySection({
    Key? key,
    required this.entries,
    required this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
        ),
        Expanded(
          child:
              entries.isEmpty
                  ? const Center(child: Text('Нет записей'))
                  : ListView.separated(
                    itemCount: entries.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder:
                        (context, index) =>
                            itemBuilder(context, entries[index]),
                  ),
        ),
      ],
    );
  }
}