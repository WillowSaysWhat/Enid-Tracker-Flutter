import 'package:flutter/material.dart';
import 'package:enid_tracker/screens/welcome_screen.dart';

void main() => runApp(Enid_tracker());

class Enid_tracker extends StatelessWidget {
  const Enid_tracker({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
