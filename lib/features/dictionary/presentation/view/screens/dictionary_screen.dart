import 'package:flora_care/features/dictionary/domain/entities/dictionary_docs_response_entity.dart';
import 'package:flora_care/features/dictionary/presentation/view/components/dictionary_plant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flora_care/features/dictionary/presentation/bloc/dictionary_bloc.dart';

class DictionaryScreen extends StatefulWidget {
  const DictionaryScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DictionaryScreenState();
}

class _DictionaryScreenState extends State<DictionaryScreen> {
  bool _isSearching = false;
  String _query = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        _query = '';
        context.read<DictionaryBloc>().add(
          const DictionaryEvent.getAll(page: 1, limit: 20),
        );
      }
    });
  }

  void _onSearchChanges(String value) {
    _query = value;
    context.read<DictionaryBloc>().add(
      DictionaryEvent.search(query: _query, page: 1, limit: 20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // leading: PopupMenuButton<String>(
        //   icon: const Icon(Icons.menu),
        //   onSelected: (value) {
        //     if (value == 'home') {
        //       Navigator.pushNamed(context, '/home');
        //     } else if (value == 'dictionary') {
        //       Navigator.pushNamed(context, '/dictionary');
        //     }
        //   },
        //   itemBuilder: (context) => [
        //     const PopupMenuItem<String>(
        //       value: 'home',
        //       child: Text('Мои растения'),
        //     ),
        //     const PopupMenuItem<String>(
        //       value: 'dictionary',
        //       child: Text('Справочник растений'),
        //     ),
        //   ],
        // ),
        title:
            _isSearching
                ? TextField(
                  controller: _searchController,
                  autofocus: true,
                  decoration: const InputDecoration(
                    hintText: 'Поиск ...',
                    border: InputBorder.none,
                  ),
                  onChanged: _onSearchChanges,
                )
                : const Text('Справочник растений'),
        actions: [
          IconButton(
            icon: Icon(_isSearching ? Icons.close : Icons.search),
            onPressed: _toggleSearch,
          ),
        ],
      ),
      body: BlocBuilder<DictionaryBloc, DictionaryState>(
        builder: (context, state) {
          switch (state) {
            case Initial():
              return const Center(child: Text('Ничего не загружено'));
            case Loading():
              return const Center(child: CircularProgressIndicator());
            case Error(message: final msg):
              return Center(child: Text('Ошибка: $msg'));
            case Loaded(plants: final plants, filterPlants: final filterPlants):
              return Builder(
                builder: (context) {
                  if (filterPlants.isNotEmpty) {
                    return ViewPlants(plants: filterPlants);
                  } else {
                    return ViewPlants(plants: plants);
                  }
                },
              );
            default:
              return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class ViewPlants extends StatelessWidget {
  final List<DictionaryDocsResponseEntity> plants;

  const ViewPlants({super.key, required this.plants});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: plants.length,
      itemBuilder: (context, index) {
        final plant = plants[index];
        return DictionaryPlantCard(
          plant: plant,
          onTap: () => Navigator.pushNamed(context, '/plant', arguments: plant),
        );
      },
    );
  }
}
