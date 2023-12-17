import 'package:enid_tracker/widgets/icon_circle.dart';
import 'package:enid_tracker/widgets/medicine_panel.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _panelData = [
    'panel1',
    'panel2',
    'panel3',
    'panel4',
    'panel5',
  ];
  final List _iconData = [
    'icon1',
    'icon2',
    'icon3',
    'icon4',
    'icon5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Flexible(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 60,
              child: AppBar(
                backgroundColor: Colors.blueGrey,
              ),
            ),

            Container(
              color: Colors.grey,
              height: 120,
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
              flex: 5,
              child: ListView.builder(
                itemCount: _panelData.length,
                itemBuilder: (context, index) {
                  return MedicinePanel(
                    title: _panelData[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amberAccent,
        child: Icon(Icons.add_chart),
      ),
    );
  }
}
