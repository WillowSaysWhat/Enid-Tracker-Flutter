import 'package:flutter/material.dart';

class MedicinePanel extends StatelessWidget {
  final String title;
  final String strength;
  final String timeOfDay;
  final int quantity;

  const MedicinePanel({
    super.key,
    required this.title,
    required this.strength,
    required this.timeOfDay,
    required this.quantity,
  });

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
                    title,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    strength,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    timeOfDay,
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
                    quantity.toString(),
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
                    'assets/logo.png',
                    height: 80,
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
