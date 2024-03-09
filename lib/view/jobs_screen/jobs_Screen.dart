import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';
import 'package:flutter_application_1/view/edit_profile/edit_profile.dart';
import 'package:flutter_application_1/view/jobs_screen/widgets/recent_search.dart';
import 'package:flutter_application_1/view/jobs_screen/widgets/recommended-jobs.dart';
import 'package:flutter_application_1/view/messaging_screen/messaging_screen.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfile(),
                ),
              );
            },
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/1239291/pexels-photo-1239291.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
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
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen(),));}, icon: Icon(Icons.sms)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: Text("My jobs"),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: Text("preferences"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: Text("Post a free job"),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Divider(thickness: 15),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Recommended for You",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) => RecommendedJobCard(),
              
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Show All"),Icon(Icons.arrow_forward_rounded)],),
              Divider(thickness: 10,),
              Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "Recent Searches",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Text("Clear")
              ],
            ),
          ),
             ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>  RecentSearch(),),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Show more",style: TextStyle(color: const Color.fromARGB(255, 4, 83, 147),fontWeight: FontWeight.bold,fontSize: 15),),
              )
          ],
        ),
      ),
    );
  }
}
