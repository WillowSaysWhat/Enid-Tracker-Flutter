import 'package:enid_tracker/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:enid_tracker/logic/medicine_class.dart';
import 'package:provider/provider.dart';

class NewMedicineScreen extends StatefulWidget {
  const NewMedicineScreen({super.key});

  @override
  State<NewMedicineScreen> createState() => _NewMedicineScreenState();
}

class _NewMedicineScreenState extends State<NewMedicineScreen> {
  int currentValue = 20;

  @override
  Widget build(BuildContext context) {
    Medicine newMedicine = Medicine();

    final String pillPortrait = context.watch<NewMedicine>().pillPortrait;
    final String imageLocation = context.watch<NewMedicine>().imageLocation;
    final String medicine = context.watch<NewMedicine>().medicine;
    final String strength = context.watch<NewMedicine>().strength;
    final String ThetimeOfDay = context.watch<NewMedicine>().timeOfDay;

    TextEditingController tController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 178, 219, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 178, 219, 240),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
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
                    height: 250,
                    child: Row(
                      children: [
                        Image.asset(
                          pillPortrait,
                          width: 150,
                          height: 300,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        // Pill Details in Text
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Name",
                              style: TextStyle(color: Colors.white70),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 400,
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: tController,
                                            ),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                if (tController
                                                    .text.isNotEmpty) {
                                                  context
                                                      .read<NewMedicine>()
                                                      .setMedicine(
                                                          tController.text);

                                                  Navigator.pop(context);
                                                }
                                              },
                                              child: const Text("OK"))
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                medicine,
                                style: const TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Strength",
                              style: TextStyle(color: Colors.white70),
                            ),
                            GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return SizedBox(
                                      height: 400,
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextField(
                                              controller: tController,
                                            ),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                if (tController
                                                    .text.isNotEmpty) {
                                                  context
                                                      .read<NewMedicine>()
                                                      .setStrength(
                                                          tController.text);

                                                  Navigator.pop(context);
                                                }
                                              },
                                              child: const Text("OK"))
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                strength,
                                style: const TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Time of Day",
                              style: TextStyle(color: Colors.white70),
                            ),
                            Text(
                              ThetimeOfDay,
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
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
                    height: 120,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15, top: 15),
                            child: Text(
                              "Time of Day",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.white70),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<NewMedicine>()
                                    .setTimeOfDay("Morning");
                              },
                              child: const Icon(
                                Icons.bakery_dining,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<NewMedicine>()
                                    .setTimeOfDay("Lunch");
                              },
                              child: const Icon(
                                Icons.light_mode,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<NewMedicine>()
                                    .setTimeOfDay("Dinner");
                              },
                              child: const Icon(
                                Icons.nightlight,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<NewMedicine>()
                                    .setTimeOfDay("Bedtime");
                              },
                              child: const Icon(
                                Icons.bed,
                                color: Colors.white,
                                size: 50,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
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
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              "Quantity",
                              style: TextStyle(
                                  fontSize: 20, color: Colors.white70),
                            ),
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
                              textStyle: const TextStyle(color: Colors.white70),
                              selectedTextStyle: const TextStyle(
                                  fontSize: 45, color: Colors.white),
                              haptics: true,
                              maxValue: 100,
                              value: currentValue,
                              onChanged: (v) {
                                setState(() {
                                  currentValue = v;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
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
                    height: 110,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: const Padding(
                            padding: EdgeInsets.only(left: 15, top: 5),
                            child: Text(
                              "Shape",
                              style: TextStyle(
                                  fontSize: 22, color: Colors.white70),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: pillImages.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  context
                                      .read<NewMedicine>()
                                      .setPillPortrait(pillImages[index][0]);

                                  context
                                      .read<NewMedicine>()
                                      .setPillImage(pillImages[index][0]);
                                },
                                child: Image.asset(
                                  pillImages[index][0],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        newMedicine.medicine = medicine;
                        newMedicine.strength = strength;
                        newMedicine.quantity = currentValue;
                        newMedicine.timeOfDay = ThetimeOfDay;
                        newMedicine.imageLocation = imageLocation;

                        context
                            .read<MedicineList>()
                            .insertMedicine(newMedicine);

                        Navigator.pop(context);
                      },
                      child: const Text("Continue"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
