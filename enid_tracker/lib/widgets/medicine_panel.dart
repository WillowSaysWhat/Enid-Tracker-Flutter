import 'package:flutter/material.dart';

class MedicinePanel extends StatefulWidget {
  final String title;
  final String strength;
  final String
      timeOfDay; // these are the attributes from home_screen.dart: line 57
  final int quantity;
  final String imageLocation;

  const MedicinePanel({
    super.key,
    required this.title,
    required this.strength, // required to make this widget work corrently.
    required this.timeOfDay,
    required this.quantity,
    required this.imageLocation,
  });

  @override
  State<MedicinePanel> createState() => _MedicinePanelState();
}

class _MedicinePanelState extends State<MedicinePanel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.lightBlueAccent,
              Colors.blueAccent,
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(2, 8),
                blurStyle: BlurStyle.normal),
          ],
        ),
        height: 200,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    widget.title, // here is one of the required attributes
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.strength, // here is another atribute
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    widget.timeOfDay, // and another
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 40),
                  child: Text(
                    widget.quantity
                        .toString(), // this one is an int, so it is converted to a string.
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Taken'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.limeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Image.asset(
                    widget
                        .imageLocation, // this is a placeholder image this will be soon changed to the class attribute
                    height: 60,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
