import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:enid_tracker/screens/Set_Notification_Screen.dart';
import 'package:enid_tracker/widgets/home_screen_icon_circles.dart';
import 'package:enid_tracker/widgets/medicine_panel.dart';
import 'package:enid_tracker/logic/medicine_class.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Stream? MedicineStream;

  getontheload() async {
    MedicineStream = await DatabaseMethods().getMedicineDetails();

    setState(
      () {},
    );
  }

  @override
  void initState() {
    getontheload();
    super.initState();
  }

// this builds the Medicine List,
  Widget allMedicineDetails() {
    return StreamBuilder(
        stream: MedicineStream,
        builder: (contxt, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (contxt, index) {
                    DocumentSnapshot ds = snapshot.data.docs[index];
                    return MedicinePanel(
                      title: ds["medicine"],
                      strength: ds["strength"],
                      timeOfDay: ds["timeOfDay"],
                      quantity: ds["quantity"],
                      imageLocation: ds["imageLocation"],
                      id: ds["Id"],
                    );
                  },
                )
              : Container();
        });
  }

  @override
  Widget build(BuildContext context) {
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
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PlusIconButton(),
                AlarmClockIconButton(),
                SettingsIconButton(),
              ],
            ),
          ),
          //
          // Medicine panels View List
          Expanded(
            flex: 4,
            child: allMedicineDetails(),
          ),
        ],
      ),
    );
  }
}
