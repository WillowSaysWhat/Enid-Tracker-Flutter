import 'package:enid_tracker/screens/new_reminder_screen.dart';
import 'package:enid_tracker/widgets/icon_circle.dart';
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
  final List _iconData = [
    'icon1',
    'icon2',
    'icon3',
    'icon4',
    'icon5',
  ];

  @override
  Widget build(BuildContext context) {
    final List<Medicine> panelData = context.watch<MedicineList>().panelData;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Flexible(
        child: Column(
          children: <Widget>[
            // space to pull circle list view away from top
            SizedBox(
              height: 60,
              child: AppBar(
                backgroundColor: Colors.lightBlueAccent,
              ),
            ),
            // Circle icon list view
            Container(
              color: Colors.lightBlueAccent,
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _iconData.length,
                itemBuilder: (context, index) {
                  return IconCircle(child: _iconData[index]);
                },
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NewReminderScreen()));
        },
        backgroundColor: Colors.amberAccent,
        child: const Icon(Icons.add),
      ),
    );
  }
}
