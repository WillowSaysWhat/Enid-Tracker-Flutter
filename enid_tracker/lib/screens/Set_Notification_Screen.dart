import 'package:flutter/material.dart';

class NewNotificationScreen extends StatefulWidget {
  const NewNotificationScreen({super.key});

  @override
  State<NewNotificationScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NewNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 219, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 178, 219, 240),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
