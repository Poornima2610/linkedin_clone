import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/view/home_screen/home_screen.dart';
import 'package:flutter_application_1/view/jobs_screen/jobs_Screen.dart';
import 'package:flutter_application_1/view/my_network/my_network_screen.dart';
import 'package:flutter_application_1/view/notification_screen/notification_screen.dart';




class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    HomeScreen(),
    MyNetworkScreen(),
    Container(
      color: Colors.white,
    ),
    NotificationScreen(),
    
    JobScreen()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: screesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value != 2) {
            selectedIndex = value;
            setState(() {});
          } else {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => SplashScreen(),
            //     ));
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstants.primaryblack,
        currentIndex: selectedIndex,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home
          
          ), label: "Home"),
          const BottomNavigationBarItem(icon: Icon(Icons.group), label: "My Network"),

          // center bottm nav  button
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all()),
                  child: const Icon(Icons.add)),
              label: "Post"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.work),
              label: "Jobs"),
        ],
      ),
      
    );
  }
}
