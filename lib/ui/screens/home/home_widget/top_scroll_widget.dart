import 'package:flutter/material.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';

class TopScrollWidget extends StatelessWidget {
  const TopScrollWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(' Restaurant' , style: lightMode.textTheme.headlineSmall,)
      ],
    );
  }
}
