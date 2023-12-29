import 'package:enid_tracker/widgets/pill_icon.dart';
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

  List<String> pillImages = [
    one.imageLocation,
    two.imageLocation,
  ];
  @override
  Widget build(BuildContext context) {
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
                    Container(
                      child: Image.asset(
                        'assets/logo.png',
                        width: 200,
                      ),
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
                            currentValue = v;
                          },
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Shape",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        child: Image.asset(
                          pillImages[0],
                          height: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Colour",
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 115,
                      child: Image.asset(pillImages[0]),
                    )
                  ],
                ),
                Container(
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
}
