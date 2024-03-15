import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/mynetworkdummydb.dart';
import 'package:flutter_application_1/view/edit_profile/edit_profile.dart';
import 'package:flutter_application_1/view/messaging_screen/messaging_screen.dart';
import 'package:flutter_application_1/view/my_network/widgets/invitation.dart';
import 'package:flutter_application_1/view/my_network/widgets/manage_my_network.dart';
import 'package:flutter_application_1/view/my_network/widgets/suggesion_network.dart';

class MyNetworkScreen extends StatelessWidget {
  const MyNetworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile(), ));
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ManageMyNetwork(),));
                    },
                    child: Container(
                      child: Text(
                        "Manage My Network",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
            Divider(
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Invitation(),)) ;
                    },
                    child: Container(
                      child: Text(
                        "Invitation (0)",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
            ),
            Divider(
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("People you may know from Kerala"),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: MyNetworkDb.MyNetworkList.length,
              itemBuilder: (context, index) => SuggesionNetwork(
                profile: MyNetworkDb.MyNetworkList[index]["profile"],
                username: MyNetworkDb.MyNetworkList[index]["username"],
                designation: MyNetworkDb.MyNetworkList[index]["designation"],
                 profile2: MyNetworkDb.MyNetworkList[index]["profile2"],
                username2: MyNetworkDb.MyNetworkList[index]["username2"],
                designation2: MyNetworkDb.MyNetworkList[index]["designation2"],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
