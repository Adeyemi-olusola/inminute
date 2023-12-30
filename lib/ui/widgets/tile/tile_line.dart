import 'package:flutter/material.dart';

class TrackingTile extends StatelessWidget {
  const TrackingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    radius: 2,
                  ),
                  Container()
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
