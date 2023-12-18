import 'package:flutter/material.dart';

class IconCircle extends StatelessWidget {
  final String child;
  const IconCircle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 100.0,
        width: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: <Color>[
              Colors.lightBlueAccent,
              Colors.blueAccent,
            ],
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 0.5,
                blurRadius: 9,
                offset: Offset(3, 10),
                blurStyle: BlurStyle.normal),
          ],
        ),
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
