import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/top_bar.dart';
import 'package:mini_project_mobile_app/constants.dart';
import 'package:mini_project_mobile_app/Components/updates_tile.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60.0,
            ),
            const TopBar(),
            const SizedBox(
              height: 40.0,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Updates',
                style: ktitleTextStyle,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/eleven');
              },
                child: UpdatesTile(title: "Events", image: AssetImage('Images/events.png'),)),
            SizedBox(
              height: 12.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/twelve');
              },
                child: UpdatesTile(title: "Holidays", image: AssetImage('Images/holidays.png'),)),
            SizedBox(
              height: 12.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/thirteen');
              },
                child: UpdatesTile(title: "Extra classes", image: AssetImage('Images/extra_classes.png'),)),
              ],
            ),
          ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics",),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications",),
        ],
      ),
        );
  }
}




