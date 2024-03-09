import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [CircleAvatar(radius: 30,backgroundImage: NetworkImage("https://images.pexels.com/photos/19589484/pexels-photo-19589484/free-photo-of-a-woman-in-a-black-coat-and-black-purse-standing-next-to-a-carousel.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
      RichText(
        text: TextSpan(
      text: 'Greeshma ',
      style: TextStyle(fontWeight: FontWeight.bold,color: ColorConstants.primaryblack),
      children: const <TextSpan>[
        TextSpan(text: 'commended on ',style: TextStyle(fontWeight: FontWeight.normal) ),
        TextSpan(text: ' Amal ks',style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: 'post:\n well deserved, your efforts have \n been recognised... ', style: TextStyle(fontWeight: FontWeight.normal)),
      ],
        ),
      ),
    Column(children: [Text("8m"),  Icon(Icons.more_vert)],)
      
      
      
      ],),
    );
  }
}