import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/view/settings_screen/settings_screen.dart';

class Invitation extends StatelessWidget {
  const Invitation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Invitations"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingScreen(),
                    ));
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Container(
                color: ColorConstants.primarygray,
                child: TabBar(
                    tabAlignment: TabAlignment.start,
                    isScrollable: true,
                    indicatorColor: Colors.green,
                    labelColor: Colors.green,
                    labelPadding: EdgeInsets.symmetric(horizontal: 25),
                    tabs: [
                      Tab(
                        text: "Received",
                      ),
                      Tab(
                        text: "Send",
                      )
                    ]),
              ),
              Expanded(
                  child: TabBarView(children: [
                Container(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Text(
                                  "All (0)",
                                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                                  
                                ),
                              ),
                                
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(height: 150),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                          Center(child: Container(child: Image(image: AssetImage("assets/images/Screenshot 2024-03-15 131007.png")),)),
                          Text("No invitation here",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
                        ],)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Text(
                                  "people (0)",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                  
                                ),
                              ),
                                
                            ),
                            SizedBox(width: 10,),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Text(
                                  "pages (0)",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                  
                                ),
                              ),
                                
                            ),
                            SizedBox(width: 10,),
                            Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                                child: Text(
                                  "Events (0)",
                                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                  
                                ),
                              ),
                                
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(height: 150,),
                        Column(children: [Container(child: Image(image: AssetImage("assets/images/Screenshot 2024-03-15 131020.png")),),
                        Text("No invitations here",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                        
                        ],)
                      ],
                    ),
                  ),
                ),
              ]))
            ],
          )),
    );
  }
}
