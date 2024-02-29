import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/constants/image_constants.dart';

class CustomHomeCard extends StatefulWidget {
  const CustomHomeCard({
    super.key,
    required this.proPic,
    required this.username,
    required this.stage,
    required this.position,
    required this.time,
    required this.posting,
    required this.comments,
    required this.text,
  });
  final String proPic;
  final String username;
  final String stage;
  final String position;
  final String time;
  final String posting;
  final String comments;
  final String text;

  @override
  State<CustomHomeCard> createState() => _CustomHomeCardState();
}

class _CustomHomeCardState extends State<CustomHomeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      widget.proPic),
                ),
                SizedBox(
                  width: 20,
                ),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.username,
                          style: TextStyle(
                              color: ColorConstants.primaryblack,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20,),
                        Text(widget.stage)
                      ],
                    ),
                    Text(widget.position),
                    Row(
                      children: [
                        Text(widget.time),
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(ImageConstants.timeImg)
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(widget.text),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Image.network(
                    widget.posting)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(ImageConstants.reaction),
                Text(widget.comments)
              ],
            ),
            Divider(),
            BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.thumb_up_alt), label: "Like"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.comment), label: "Comment"),
              BottomNavigationBarItem(icon: Icon(Icons.share), label: "Share"),
              BottomNavigationBarItem(icon: Icon(Icons.send), label: "send"),
            ])
          ],
        ),
      ),
    );
  }
}
