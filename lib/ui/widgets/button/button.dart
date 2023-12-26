import 'package:flutter/material.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key, required this.text, this.onPressed, this.height})
      : super(key: key);
  final String text;

  final int? height;

  final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(text,
                style: lightMode.textTheme.bodySmall!
                    .copyWith(color: Colors.black))),
      ),
    );
  }
}

class ReUsableButton extends StatelessWidget {
  const ReUsableButton(
      {Key? key, this.onPressed, this.height, required this.widgets})
      : super(key: key);

  final int? height;

  final dynamic onPressed;

  final Widget widgets;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        width: MediaQuery.of(context).size.width,
        child: Center(child: widgets),
      ),
    );
  }
}
