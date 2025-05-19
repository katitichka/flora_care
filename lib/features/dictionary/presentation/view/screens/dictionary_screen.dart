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
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _loadData() {
    if (_isSearching && _query.isNotEmpty) {
      context.read<DictionaryBloc>().add(
        DictionaryEvent.search(query: _query, page: 1, limit: 20),
      );
    } else {
      context.read<DictionaryBloc>().add(
        const DictionaryEvent.getAll(page: 1, limit: 20),
      );
    }
  }

  void _toggleSearch() {
    setState(() {
      _isSearching = !_isSearching;
      if (!_isSearching) {
        _searchController.clear();
        _query = '';
        _loadData();
      }
    });
  }

  void _onSearchChanges(String value) {
    _query = value;
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _isSearching
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
          return _buildContent(state);
        },
      ),
    );
  }

  Widget _buildContent(DictionaryState state) {
    if (state is Loading && !_isSearching) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state is Error) {
      return Center(child: Text('Ошибка: ${state.message}'));
    }

    if (state is Loaded) {
      final displayPlants = state.filterPlants.isNotEmpty 
          ? state.filterPlants 
          : state.plants;
          
      if (displayPlants.isEmpty) {
        return Center(
          child: Text(_isSearching 
              ? 'Ничего не найдено' 
              : 'Растения не загружены'),
        );
      }

      return RefreshIndicator(
        notificationPredicate: (_) => !_isSearching,
        onRefresh: () async {
          if (!_isSearching) {
            _loadData();
            await context.read<DictionaryBloc>().stream.firstWhere(
              (state) => state is Loaded || state is Error,
            );
          }
        },
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: displayPlants.length,
          itemBuilder: (context, index) {
            final plant = displayPlants[index];
            return DictionaryPlantCard(
              plant: plant,
              onTap: () => Navigator.pushNamed(
                context, 
                '/plant', 
                arguments: plant,
              ),
            );
          },
        ),
      );
    }

    return const Center(child: Text('Ничего не загружено'));
  }
}