import 'package:flutter/material.dart';

class CustomChatCard extends StatefulWidget {
  const CustomChatCard({super.key,
  required this.name,
  required this.last_message,
  required this.count,
  required this.profile_pic,
  required this.time,
  
  
  });

  final String name;
  final String last_message;
  final int count ;
  final String profile_pic;
  final String time;


  @override
  State<CustomChatCard> createState() => _CustomChatCardState();
}

class _CustomChatCardState extends State<CustomChatCard> {



  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(widget.profile_pic),
              ),
              Positioned(
                bottom: 10,
                right: 0,
                child: CircleAvatar(
                  radius: 6,
                  
                  backgroundColor: Color.fromARGB(255, 49, 212, 54),
                ),
              ),
            ],
          ),

          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(widget.name),
            Text(widget.last_message),
            SizedBox(height: 10,)
            
            ],
            
          ),
          Spacer(),
          Column(children: [
            Text(widget.time),
            Visibility(
              visible: widget.count>0? true:false,
              child: CircleAvatar(radius: 10,child: Center(child: Text(widget.count.toString(),style: TextStyle(color: Colors.white),)),backgroundColor: const Color.fromARGB(255, 4, 82, 145),))
          ],)
        ],
      ),
    );
  }
}
