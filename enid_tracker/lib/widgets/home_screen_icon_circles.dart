import 'package:enid_tracker/screens/Set_Notification_Screen.dart';
import 'package:enid_tracker/screens/new_reminder_screen.dart';
import 'package:flutter/material.dart';

class PlusIconButton extends StatelessWidget {
  const PlusIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class AlarmClockIconButton extends StatelessWidget {
  const AlarmClockIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  builder: (context) => const NewNotificationScreen()));
        },
        icon: const Center(
          child: Icon(
            Icons.access_alarm,
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}

class SettingsIconButton extends StatelessWidget {
  const SettingsIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
