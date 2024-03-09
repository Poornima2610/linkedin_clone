import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/dummy_db.dart';
import 'package:flutter_application_1/view/edit_profile/edit_profile.dart';
import 'package:flutter_application_1/view/home_screen/custome_home_card/custome_home_card.dart';
import 'package:flutter_application_1/view/messaging_screen/messaging_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(),));
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
      body: ListView.builder(
        itemCount: DummyDb.PostList.length,
        itemBuilder: (context, index) => CustomHomeCard(
          proPic: DummyDb.PostList[index]["proPic"],
          username: DummyDb.PostList[index]["username"],
          stage: DummyDb.PostList[index]["stage"],
          position: DummyDb.PostList[index]["position"],
          time: DummyDb.PostList[index]["time"],
          posting: DummyDb.PostList[index]["posting"],
          comments: DummyDb.PostList[index]["comments"],
          text: DummyDb.PostList[index]["text"],
        ),
      ),
    );
  }
}
