import 'package:flutter/material.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';

class TopScrollWidget extends StatelessWidget {
  const TopScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: 83,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [],
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
