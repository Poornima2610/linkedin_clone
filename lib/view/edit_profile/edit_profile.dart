import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    
                    hintText: "Search",
                    prefixIconConstraints: BoxConstraints(
                      minWidth: 30,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    
                        ),
                        
              ),
            ),
          ],
        ),
        actions: [Icon(Icons.settings)],
     ), 
     body: ,
    );
  }
}