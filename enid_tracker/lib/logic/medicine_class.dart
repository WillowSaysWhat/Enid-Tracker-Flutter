import 'package:flutter/material.dart';

class NewMedicine extends ChangeNotifier {
  // this is just a list really
  String medicine = 'Placeholder';
  String strength = "100mg";
  String timeOfDay = "Morning";
  int quantity = 20;
  String imageLocation = 'assets/tablet-blue.png';
  String pillPortrait = 'assets/logo.png';

  void setPillPortrait(String thisPill) {
    int length = pillImages.length;

    for (var i = 0; i < length; i++) {
      if (thisPill == pillImages[i][0]) pillPortrait = pillImages[i][1];
      notifyListeners();
    }
  }
}

class Medicine {
  // this is just a list really
  String medicine = 'Placeholder';
  String strength = "100mg";
  String timeOfDay = "Morning";
  int quantity = 20;
  String imageLocation = 'assets/tablet-blue.png';
}

class MedicineList extends ChangeNotifier {
  final List<Medicine> _panelData = [one, two, three, four];

  List<Medicine> get panelData => _panelData;

  void insertMedicine(Medicine medicine) {
    _panelData.add(medicine);
  }
}

// test object
Medicine one = Medicine();
Medicine two = Medicine();
Medicine three = Medicine();
Medicine four = Medicine();

List<List<String>> pillImages = [
  ["assets/capsule-blue.png", "assets/capsule-blue-copy.png"],
  ["assets/capsule-pink.png", "assets/capsule-pink-vertical.png"],
  ["assets/oblong-tablet-white.png", ""],
  ["assets/oblong-tablet-pink.png", ""],
  ["assets/oblong-tablet-yellow.png", ""],
  ["assets/plain-tablet-pink.png", ""],
  ["assets/plain-tablet-white.png", ""],
  ["assets/plain-tablet-yellow.png", ""],
  ["assets/tablet-blue.png", ""],
  ["assets/tablet-pink.png", ""],
  ["assets/tablet-white.png", ""],
];
