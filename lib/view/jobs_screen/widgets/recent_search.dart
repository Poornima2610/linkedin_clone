import 'package:flutter/material.dart';

class RecentSearch extends StatefulWidget {
  const RecentSearch({super.key});

  @override
  State<RecentSearch> createState() => _RecentSearchState();
}

class _RecentSearchState extends State<RecentSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(children: [
            Text("Python Developer",style: TextStyle(fontSize: 15),),
            SizedBox(width: 20,),
            Text("48 new",style: TextStyle(color: const Color.fromARGB(255, 2, 86, 5)),
            ),
            
          ],),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
              children: [
                Text("Bengaluru"),
              ],
            ),
        ),
        Divider()
        ],
      ),
    );
  }
}
