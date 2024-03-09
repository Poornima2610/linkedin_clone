import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/view/messaging_screen/widgets/chat_screen.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Messagin",
          style: TextStyle(
              color: ColorConstants.primaryblack, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.more_vert,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.edit_square),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 20,),
                      Text("Search Message"),
                      Spacer(),
                      Icon(Icons.tune)
                    ],
                  ),
                ),
                Divider()
              ],
            ),
            Chat(),
          ],
        ),
      ),
    );
  }
}
