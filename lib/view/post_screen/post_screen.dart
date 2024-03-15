import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Icon(Icons.close),
        ),
        title: Row(children: [CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/16276552/pexels-photo-16276552/free-photo-of-back-of-a-woman-sitting-on-top-of-a-wooden-bridge-railing-looking-at-a-placid-autumn-lake.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),),
        SizedBox(width: 10,),
        Text("Anyone",style: TextStyle(color: Color.fromRGBO(158, 158, 158, 0.886)),),Icon(Icons.expand_more_outlined)],),
      actions: [

        Icon(Icons.schedule),
        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: ColorConstants.primarygray),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text("Post",style: TextStyle(color: Color.fromARGB(255, 73, 70, 70))),
            ),
          ),
        )
      ],
      ),

    body: Column(children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
       decoration: InputDecoration(
      
      hintText: 'Share Your thoughts...',hintStyle: TextStyle(fontSize: 23,),
       border: InputBorder.none,
        ),
      ),
    ),
    Spacer(),
    Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        
        children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(width: 1)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: Row(children: [
              Icon(Icons.star_outlined,color: Colors.amber,),
              Text("Rewrite With Ai",style: TextStyle(color:const Color.fromARGB(255, 93, 89, 89),fontSize: 20 ),)
            ],),
          ),
        ),
        SizedBox(width: 40,),
        Icon(Icons.photo_size_select_actual_outlined,color: Colors.grey,size: 30,),
        SizedBox(width: 20,),
        Icon(Icons.add,color: Colors.grey,size: 30,)
      ],),
    )
    ],
    ),
      
    );
  }
}