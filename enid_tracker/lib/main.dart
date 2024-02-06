import 'dart:io';
import 'package:flutter/material.dart';
import 'package:enid_tracker/screens/welcome_screen.dart';
import 'package:provider/provider.dart';
import 'package:enid_tracker/logic/medicine_class.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          // google-services.json didn't work so I init manually.
          options: const FirebaseOptions(
          apiKey: "AIzaSyD7WDpLeUX3oziMzIjnu6oHBnCjD0_iGaA",
          appId: "1:144452146019:android:a186bf5ad1afb43a9f3956",
          messagingSenderId: "144452146019",
          projectId: "enid-tracker",
        ))
      : await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => NewMedicine(),
        ),
      ],
      child: const Enid_tracker(),
    ),
  );
}

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
