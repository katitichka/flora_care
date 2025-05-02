import 'package:flutter/material.dart';

class MyFlowerScreen extends StatefulWidget {
  const MyFlowerScreen({super.key});

  @override
  State<MyFlowerScreen> createState() => _MyFlowerScreenState();
}

class _MyFlowerScreenState extends State<MyFlowerScreen> {
  void _getFlower() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: <Widget>[const Text('растение номер 1')]),
      ),
    );
  }
}
