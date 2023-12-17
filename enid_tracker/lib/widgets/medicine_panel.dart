import 'package:flutter/material.dart';

class MedicinePanel extends StatelessWidget {
  final String title;

  const MedicinePanel({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.greenAccent,
              Colors.green,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 15,
                offset: const Offset(2, 8),
                blurStyle: BlurStyle.normal),
          ],
        ),
        height: 200,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
