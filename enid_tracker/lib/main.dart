import 'package:flutter/material.dart';
import 'package:enid_tracker/screens/welcome_screen.dart';

void main() => runApp(const Enid_tracker());

// ignore: camel_case_types
class Enid_tracker extends StatefulWidget {
  const Enid_tracker({super.key});

  @override
  State<Enid_tracker> createState() => _Enid_trackerState();
}

// ignore: camel_case_types
class _Enid_trackerState extends State<Enid_tracker> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
