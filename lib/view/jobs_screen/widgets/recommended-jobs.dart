import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants/color_constants.dart';

class RecommendedJobCard extends StatefulWidget {
  const RecommendedJobCard({super.key});

  @override
  State<RecommendedJobCard> createState() => _RecommendedJobCardState();
}

class _RecommendedJobCardState extends State<RecommendedJobCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        alignment: Alignment.topLeft,
                        height: 50,
                        width: 50,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "FrontEnd Developer-WFH",
                          style: TextStyle(
                              color: ColorConstants.primaryblack,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        Text("Chennai, Tamil Nadu, india(Remote)"),
                        Text("\$30"),
                        Text("Promoted"),
                        
                      ],
                    ),
                  ],
                ),
                Divider()
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
