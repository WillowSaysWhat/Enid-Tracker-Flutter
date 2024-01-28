import 'package:enid_tracker/screens/new_reminder_screen.dart';

import 'package:enid_tracker/widgets/medicine_panel.dart';
import 'package:enid_tracker/logic/medicine_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Medicine> panelData = context.watch<MedicineList>().panelData;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 219, 240),
      body: Column(
        children: <Widget>[
          // space to pull circle list view away from top
          SizedBox(
            height: 60,
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 178, 219, 240),
            ),
          ),
          // Circle icon list view
          Container(
            color: const Color.fromARGB(255, 178, 219, 240),
            height: 120,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 24, 98, 226),
                        Color(0xFF063970),
                      ],
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewMedicineScreen()));
                    },
                    icon: const Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 24, 98, 226),
                        Color(0xFF063970),
                      ],
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Center(
                      child: Icon(
                        Icons.access_alarm,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 110,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 24, 98, 226),
                        Color(0xFF063970),
                      ],
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Center(
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          //
          // Medicine panels View List
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: panelData.length,
              itemBuilder: (context, index) {
                // Irfan: this is the constructor and it takes medicine, strength, time of day,
                // and quantity as arguments (see medicine_panel.dart: line 4 - 7 & 11 - 14)
                return MedicinePanel(
                  title: panelData[index].medicine,
                  strength: panelData[index].strength,
                  timeOfDay: panelData[index].timeOfDay,
                  quantity: panelData[index].quantity,
                  imageLocation: panelData[index].imageLocation,
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
