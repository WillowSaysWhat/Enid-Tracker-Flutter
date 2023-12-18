import 'package:flutter/material.dart';

class NewReminderScreen extends StatefulWidget {
  const NewReminderScreen({super.key});

  @override
  State<NewReminderScreen> createState() => _NewReminderScreenState();
}

class _NewReminderScreenState extends State<NewReminderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New"),
      ),
      backgroundColor: Colors.blueAccent,
      body: Flexible(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'What is your new medicine?',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              // first selection
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 60.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Painkillers"),
                  ],
                ),
              ),
              // second selection
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 60.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Painkillers"),
                  ],
                ),
              ),
              // thrid selection
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 60.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Painkillers"),
                  ],
                ),
              ),
              // fourth selection
              Container(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      height: 60.0,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Painkillers"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
