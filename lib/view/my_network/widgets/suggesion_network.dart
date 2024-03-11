import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';


class SuggesionNetwork extends StatelessWidget {
  const SuggesionNetwork({ super.key,
    required this.profile,
    required this.username,
    required this.designation,
    required this.profile2,
    required this.username2,
    required this.designation2,
  
  
  });

  final String profile;
  final String username;
  final String designation;
  final String profile2;
  final String username2;
  final String designation2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 295,
                    width: 182,
                    child: Column(
                      children: [
                        Container(
                          height: 68,
                          width: 182,
                          color: ColorConstants.primarygray,
                        ),
                        SizedBox(height: 40),
                        Text(
                          username,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Center(child: Text(designation)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/170809/pexels-photo-170809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),),
                              Text("lorem lorem lorem"),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 40, right: 40),
                              child: Text(
                                "Connect",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40, // Adjust this value to position the CircleAvatar
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(profile),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: .5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 295,
                    width: 182,
                    child: Column(
                      children: [
                        Container(
                          height: 68,
                          width: 182,
                          color: ColorConstants.primarygray,
                        ),
                        SizedBox(height: 40),
                        Text(
                          username2,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Center(child: Text(designation)),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/170809/pexels-photo-170809.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),),
                              Text("lorem lorem lorem"),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.blue),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5, left: 40, right: 40),
                              child: Text(
                                "Connect",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 40, // Adjust this value to position the CircleAvatar
                    left: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(profile2),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );

}
}