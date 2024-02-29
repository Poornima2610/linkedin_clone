import 'package:flutter/material.dart';
import 'package:flutter_application_1/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter_application_1/constants/image_constants.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
   Future.delayed(Duration(seconds: 3)).then((value) {

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavBarScreen(),));
   });
   super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox(
      child: Center(child: Image.asset(ImageConstants.textlogo,scale: 1.5,),
      
        
        ),
    ),

    );
  }
}