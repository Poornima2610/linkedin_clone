import 'package:flutter/material.dart';
import 'package:flutter_application_1/message_screendb.dart';
import 'package:flutter_application_1/view/messaging_screen/widgets/custom_chat_card.dart';




class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        itemBuilder: (context, index) => CustomChatCard(
          
 name:MessageScreenDb.chat_list[index]["name"],
 last_message:MessageScreenDb.chat_list[index]["last_message"], 
 profile_pic:MessageScreenDb.chat_list[index]["profile_pic"],
 count:MessageScreenDb.chat_list[index]["count"], 
 time:MessageScreenDb.chat_list[index]["time"],

        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: MessageScreenDb.chat_list.length);
  }
}
