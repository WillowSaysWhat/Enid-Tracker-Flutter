import 'package:flutter/material.dart';

class NewMedicine extends ChangeNotifier {
  // this is just a list really
  String medicine = 'Paracetamol';
  String strength = "500mg";
  String timeOfDay = "Morning";
  int quantity = 20;
  String imageLocation = 'assets/tablet-blue.png';
  String pillPortrait = "assets/plain-tablet-pink.png";

  void setPillPortrait(String thisPill) {
    int length = pillImages.length;

    for (int i = 0; i < length; i++) {
      if (thisPill == pillImages[i][0]) pillPortrait = pillImages[i][1];
      notifyListeners();
    }
  }

  void setPillImage(String thisPill) {
    imageLocation = thisPill;
    notifyListeners();
  }

  void setMedicine(String thisPillName) {
    thisPillName =
        thisPillName.trim(); // trims any whitespace at the end of the string.
    medicine = thisPillName;
    notifyListeners();
  }

  void setStrength(String thisStrengthVal) {
    strength = "${thisStrengthVal}mg";
    notifyListeners();
  }

  void setQuantity(int thisQuantity) {
    quantity = thisQuantity;
    notifyListeners();
  }

  void setTimeOfDay(String thisTime) {
    timeOfDay = thisTime;
    notifyListeners();
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
  final List<Medicine> _panelData = [
    one,
  ];

  List<Medicine> get panelData => _panelData;

  void insertMedicine(Medicine medicine) {
    if (_panelData[0].medicine == "Placeholder") {
      _panelData.removeAt(0);
    }
    _panelData.add(medicine);
    notifyListeners();
  }

  void minusQuantity(int index) {
    -panelData[index].quantity--;
    notifyListeners();
  }
}

// test object
Medicine one = Medicine();

List<List<String>> pillImages = [
  ["assets/capsule-blue.png", "assets/capsule-blue-copy.png"],
  ["assets/capsule-pink.png", "assets/capsule-pink-vertical.png"],
  ["assets/oblong-tablet-white.png", "assets/oblong-tablet-white.png"],
  ["assets/oblong-tablet-pink.png", "assets/oblong-tablet-pink.png"],
  ["assets/oblong-tablet-yellow.png", "assets/oblong-tablet-yellow.png"],
  ["assets/plain-tablet-pink.png", "assets/plain-tablet-pink.png"],
  ["assets/plain-tablet-white.png", "assets/plain-tablet-white.png"],
  ["assets/plain-tablet-yellow.png", "assets/plain-tablet-yellow.png"],
  ["assets/tablet-blue.png", "assets/tablet-blue.png"],
  ["assets/tablet-pink.png", "assets/tablet-pink.png"],
  ["assets/tablet-white.png", "assets/tablet-white.png"],
];
