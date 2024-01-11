import 'package:enid_tracker/logic/medicine_class.dart';
import 'package:flutter/material.dart';

class PillIcon extends StatefulWidget {
  const PillIcon({super.key, required this.pill});

  final String pill;

  @override
  State<PillIcon> createState() => _PillIconState();
}

class _PillIconState extends State<PillIcon> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shadowColor: null,
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.lightBlueAccent,
      ),
      onPressed: () {
        setState(() {
          pillPortrait = setPillPortrait(widget.pill);
        });
      },
      child: Image.asset(
        widget.pill,
      ),
    );
  }

  String setPillPortrait(String thisPill) {
    String portrait = " ";
    int length = pillImages.length;

    for (var i = 0; i < length; i++) {
      if (thisPill == pillImages[i][0]) portrait = pillImages[i][1];
    }
    return portrait;
  }
}
