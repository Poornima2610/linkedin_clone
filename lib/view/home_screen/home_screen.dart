import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/dummy_db.dart';
import 'package:flutter_application_1/view/home_screen/custome_home_card/custome_home_card.dart';

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
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
        ),
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColorConstants.primarygray,
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search",
                  style: TextStyle(color: ColorConstants.primaryblack),
                ),
                Spacer(),
                Icon(Icons.qr_code)
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.sms)),
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
