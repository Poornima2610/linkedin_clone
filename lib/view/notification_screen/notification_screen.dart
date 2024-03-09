import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/view/edit_profile/edit_profile.dart';
import 'package:flutter_application_1/view/messaging_screen/messaging_screen.dart';
import 'package:flutter_application_1/view/notification_screen/notificationlist.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfile(),
                    ));
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              ),
            ),
          ),
          title: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.select_all_sharp),
                    hintText: "Search",
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 30,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    isDense: true,
                    fillColor: ColorConstants.primaryblack.withOpacity(.1),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen(),));
              }, icon: Icon(Icons.sms)),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Text("All"),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Text("My Post"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10),
                      child: Text("Mentions"),
                    ),
                  )
                ],
                
              ),
            ),
            Divider(height: 1,),
            Expanded(child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) => NotificationList(),))
          ],
        )
        );
  }
}
