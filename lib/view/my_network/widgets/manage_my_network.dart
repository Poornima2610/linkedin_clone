import 'package:flutter/material.dart';

class ManageMyNetwork extends StatelessWidget {
  const ManageMyNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Manage my network"),
      ),
      body: Column(children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(children: [
            Icon(Icons.group),
            SizedBox(width: 30,),
            Text("Connections",style: TextStyle(fontSize: 20),),
            Spacer(),
            Text("1138"),
          ],),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(children: [
            Icon(Icons.person_pin),
            SizedBox(width: 30,),
            Text("People I follow",style: TextStyle(fontSize: 20),),
            Spacer(),
            Text("14"),
          ],),
        ),
       Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(children: [
            Icon(Icons.groups_2),
            SizedBox(width: 30,),
            Text("Groups",style: TextStyle(fontSize: 20),),
            Spacer(),
            Text("10"),
          ],),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(children: [
            Icon(Icons.padding_outlined),
            SizedBox(width: 30,),
            Text("Pages",style: TextStyle(fontSize: 20),),
            Spacer(),
            Text("113"),
          ],),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(children: [
            Icon(Icons.newspaper),
            SizedBox(width: 30,),
            Text("Newsletters",style: TextStyle(fontSize: 20),),
            Spacer(),
            Text("38"),
          ],),
        ),
        Divider(),

        
      ],),
    );
  }
}