import 'package:flutter/material.dart';

class TrackingTile extends StatelessWidget {
  TrackingTile(
      {super.key, required this.firstWidget, required this.secondWidget});
  Widget firstWidget;
  Widget secondWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color.fromARGB(148, 0, 135, 83),
                  ),
                  Container(
                    height: 20,
                    width: 3,
                    color: Color.fromARGB(255, 0, 135, 83),
                  )
                ],
              ),
              SizedBox(width: 10,),
              Expanded(child: firstWidget)
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 20,
                    width: 3,
                    color: Color.fromARGB(148, 0, 135, 83),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Color.fromARGB(148, 0, 135, 83),
                  ),
                ],
              ),
               SizedBox(width: 10,),
              Expanded(child: secondWidget)
            ],
          )
        ],
      ),
    );
  }
}
