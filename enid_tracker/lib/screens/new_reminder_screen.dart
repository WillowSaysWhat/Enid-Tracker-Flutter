import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:enid_tracker/logic/medicine_class.dart';

class NewReminderScreen extends StatefulWidget {
  const NewReminderScreen({super.key});

  @override
  State<NewReminderScreen> createState() => _NewReminderScreenState();
}

class _NewReminderScreenState extends State<NewReminderScreen> {
  int currentValue = 20;

  @override
  Widget build(BuildContext context) {
    String pill = pillPortrait;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        children: [
          Flexible(
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      pill,
                      width: 200,
                    ),
                    // Pill Details in Text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pill Name"),
                        Text(
                          "PlaceHolder",
                          style: const TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Pill Strength"),
                        Text(
                          "100mg",
                          style: const TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Next Dose"),
                        Text(
                          "Morning",
                          style: const TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Quantity",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NumberPicker(
                      axis: Axis.horizontal,
                      itemHeight: 60,
                      itemWidth: 60,
                      minValue: 0,
                      itemCount: 5,
                      step: 2,
                      selectedTextStyle:
                          TextStyle(fontSize: 45, color: Colors.blue),
                      haptics: true,
                      maxValue: 100,
                      value: currentValue,
                      onChanged: (v) {
                        setState(
                          () {
                            // I am trying to get the picture to change!
                            // watching Angela's Todi tutorial to see if it
                            // sheds light.
                            currentValue = v;
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Shape",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Expanded(
                      child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: pillImages.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.all(1),
                          shadowColor: null,
                          backgroundColor: Colors.lightBlueAccent,
                          foregroundColor: Colors.lightBlueAccent,
                        ),
                        onPressed: () {
                          print("this works");
                          setState(() {
                            pill = pillImages[0][1];
                          });
                        },
                        child: Image.asset(
                          pillImages[index][0],
                        ),
                      );
                    },
                  )),
                ),
                SizedBox(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.limeAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Continue"),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
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
