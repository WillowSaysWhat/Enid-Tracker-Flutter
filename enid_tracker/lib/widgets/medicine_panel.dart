import 'package:enid_tracker/logic/medicine_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MedicinePanel extends StatefulWidget {
  final String title;
  final String strength;
  final String
      timeOfDay; // these are the attributes from home_screen.dart: line 57
  final int quantity;
  final String imageLocation;
  final int index;

  const MedicinePanel(
      {super.key,
      required this.title,
      required this.strength, // required to make this widget work corrently.
      required this.timeOfDay,
      required this.quantity,
      required this.imageLocation,
      required this.index});

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
              Color.fromARGB(255, 24, 98, 226),
              Color(0xFF063970),
            ],
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
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
                    style: const TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    widget.strength,
                    style: const TextStyle(
                        color: Colors.white54), // here is another atribute
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
                    style: const TextStyle(fontSize: 25, color: Colors.white54),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    widget.quantity
                        .toString(), // this one is an int, so it is converted to a string.
                    style: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<MedicineList>().minusQuantity(widget.index);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      'Taken',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
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
