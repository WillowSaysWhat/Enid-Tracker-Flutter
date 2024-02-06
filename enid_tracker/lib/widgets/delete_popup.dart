import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:enid_tracker/logic/medicine_class.dart';

// this is a popup for the delete icon.

class DeletePopup extends StatelessWidget {
  final String id;

  const DeletePopup({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          title: const Text(
            "Delete?",
            style: TextStyle(fontSize: 30),
          ),
          content: const Text(
            "are you sure",
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text("Continue"),
              onPressed: () {
                DatabaseMethods().deleteMedicineDetails(id);
              },
            ),
            ElevatedButton(
              child: const Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }
}
