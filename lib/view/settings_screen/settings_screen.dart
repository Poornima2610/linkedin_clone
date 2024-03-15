import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Account preferences"),
        actions: [Icon(Icons.question_mark)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Row(children: [CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/16276552/pexels-photo-16276552/free-photo-of-back-of-a-woman-sitting-on-top-of-a-wooden-bridge-railing-looking-at-a-placid-autumn-lake.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
            SizedBox(width: 20,),
            Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)
            ],),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [Icon(Icons.account_circle_rounded),
              SizedBox(width: 20,),
              Text("Account preferences",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [Icon(Icons.lock),
              SizedBox(width: 20,),
              Text("Sign in & security",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [Icon(Icons.remove_red_eye_outlined),
              SizedBox(width: 20,),
              Text("Visibility",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [Icon(Icons.privacy_tip_outlined),
              SizedBox(width: 20,),
              Text("Data privacy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ],),
            ),
             Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [Icon(Icons.newspaper),
              SizedBox(width: 20,),
              Text("Advertising data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: [Icon(Icons.notification_important),
              SizedBox(width: 20,),
              Text("Notifications",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Divider(),
              Text("Help center"),
              SizedBox(height: 25,),
              Text("professional community policies"),
              SizedBox(height: 25,),
              Text("privacy policy"),
              SizedBox(height: 25,),
              Text("Accessability"),
              SizedBox(height: 25,),
              Text("Recommendation transperancy"),
              SizedBox(height: 25,),
              Text("User Agreeement"),
              SizedBox(height: 25,),
              Text("End user Licenese Agreement"),
              SizedBox(height: 25,),
              Text("Sign out"),
              SizedBox(height: 25,),
              Text("VERSION:4.1.914"),],),
            )

          ],),
        ),
      ),
    );
  }
}
