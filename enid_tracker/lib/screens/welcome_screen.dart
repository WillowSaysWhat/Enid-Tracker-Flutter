import 'package:enid_tracker/screens/home_screen.dart';
import 'package:enid_tracker/screens/new_reminder_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 219, 240),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: const Text(
                'Enid Tracker',
                style: TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF063970),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 174, 204, 249),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 1, top: 21),
                        child: Container(
                          height: 175.0,
                          width: 175.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.blueAccent,
                                Color(0xFF063970),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 26),
                          child: Image.asset(
                            'assets/capsule-pink-vertical.png',
                            scale: 5,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
