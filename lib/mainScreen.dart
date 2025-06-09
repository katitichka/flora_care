import 'package:flora_care/features/dictionary/presentation/view/screens/dictionary_screen.dart';
import 'package:flora_care/features/user_plants/presentation/view/screens/user_plants_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  final String userId;
  const MainScreen({super.key, required this.userId});

  @override
  State<MainScreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<MainScreen> {
  int _currentIndex = 0;

  late final List<Widget> _screens = [
    UserPlantsScreen(
      userId: widget.userId,
      onAddPlant: () => _onTabNavigationBar(1),
    ),
    DictionaryScreen(userId: widget.userId),
  ];

  void _onTabNavigationBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Мои растения',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books),
            label: 'Справочник растений',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 20, 117, 24),
        onTap: _onTabNavigationBar,
      ),
    );
  }
}