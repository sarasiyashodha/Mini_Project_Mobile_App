import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/nav_bar2.dart';

class SettingPage1 extends StatelessWidget {
  const SettingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar2(),
      appBar: AppBar(
        backgroundColor: Color(0xFF305D62),
        title: Text("Settings"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("Images/TeachersProfile.jpeg"),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Privacy and Security Text
          Row(
            children: [
              Text(
                "Privacy and Security",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0), 

          Row(
            children: [
              Image.asset(
                "Images/PrivacyAndSecurity.png",
                width: 30.0, 
                height: 30.0, 
              ),
              SizedBox(width: 8.0), 
              Text(
                "Privacy and Security",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),

          SizedBox(height: 35.0), 

          Row(
            children: [
              Text(
                "Themes",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0), 

          Row(
            children: [
              Image.asset(
                "Images/Themes.png",
                width: 30.0, 
                height: 30.0, 
              ),
              SizedBox(width: 8.0), 
              Text(
                "Themes",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),

          SizedBox(height: 35.0), 

          Row(
            children: [
              Text(
                "Terms of use",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0), 

          Row(
            children: [
              Image.asset(
                "Images/TermsOfUse.png",
                width: 30.0, 
                height: 30.0, 
              ),
              SizedBox(width: 8.0), 
              Text(
                "Terms of use",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),

          SizedBox(height: 35.0), 

          Row(
            children: [
              Text(
                "Help",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0), 

          Row(
            children: [
              Image.asset(
                "Images/Help.png",
                width: 30.0, 
                height: 30.0, 
              ),
              SizedBox(width: 8.0), 
              Text(
                "Help",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),

          SizedBox(height: 35.0), 

          Row(
            children: [
              Text(
                "App Info",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ],
          ),

          SizedBox(height: 20.0), 

          Row(
            children: [
              Image.asset(
                "Images/AppInfo.png",
                width: 30.0, 
                height: 30.0, 
              ),
              SizedBox(width: 8.0), 
              Text(
                "App Info",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),

       

          
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Academics"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
        ],
      ),
    );
  }
}