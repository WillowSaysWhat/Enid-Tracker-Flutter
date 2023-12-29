import 'package:flutter/material.dart';

class PillIcon extends StatelessWidget {
  const PillIcon({super.key, required this.pillImages});

  final String pillImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        pillImages,
        width: 15,
        height: 20,
      ),
    );
  }
}
