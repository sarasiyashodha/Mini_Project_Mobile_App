import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Components/top_bar.dart';
import 'package:mini_project_mobile_app/constants.dart';
import 'package:mini_project_mobile_app/lists.dart';

class Homework extends StatefulWidget {
  const Homework({super.key});

  @override
  State<Homework> createState() => _HomeworkState();
}

Lists list = Lists();

class _HomeworkState extends State<Homework> {
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
                  child: Text('Homework', style: ktitleTextStyle,),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.check_circle_sharp, color: Color(0XFF2ECC71),),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Submitted", style: knormalTextStyle,),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Row(
                  children: [
                    Icon(Icons.cancel_sharp, color: Color(0XFFE74C3C),),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Not submitted", style: knormalTextStyle,),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Row(
                  children: [
                    Icon(Icons.error_sharp, color: Color(0XFFEABF29),),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text("Due today", style: knormalTextStyle,),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 450.0,
              child: ListView.builder(
                itemCount: list.icons.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    padding: const EdgeInsets.all(10.0),
                    height: 80,
                    width: 400,
                    decoration: BoxDecoration(border: Border.all(color: list.colors[index], width: 3.0),
                      borderRadius: const BorderRadius.all(Radius.circular(15.0),),
                    ),
                    child: Row(
                      children: [
                        Icon(list.icons[index], color: list.colors[index], size: 30.0,),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Text(list.text[index], style: knormalTextStyle,),
                      ],
                    ),
                  );

              },

              ),
            ),
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




