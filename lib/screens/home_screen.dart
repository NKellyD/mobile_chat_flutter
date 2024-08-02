import 'package:flutter/material.dart';
import 'package:mobile_chat_flutter/widgets/category_selector.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          iconSize: 20.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: const Text(
          'Chats',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            iconSize: 20.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.red,
      ),
      body: const Column(
        children: [
        CategorySelector()
        ],
      ),
    );
  }
}
