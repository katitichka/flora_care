import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/presentation/view/components/dictionary_plant_card.dart';
import 'package:flutter/material.dart';

class UserPlantsScreen extends StatefulWidget {
  const UserPlantsScreen({super.key});

  @override
  State<UserPlantsScreen> createState() => _UserPlantsScreenState();
}

class _UserPlantsScreenState extends State<UserPlantsScreen> {
  DictionaryDocsResponseEntity? plant;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final args = ModalRoute.of(context)?.settings.arguments;
      if (args != null && args is DictionaryDocsResponseEntity) {
        setState(() {
          plant = args;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Мои растения')),
      body: Center(
        child: plant != null
            ? DictionaryPlantCard(plant: plant!)
            : const Text('Нет добавленных растений'),
      ),
    );
  }
}