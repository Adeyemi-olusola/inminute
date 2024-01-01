import 'package:flutter/material.dart';
import 'package:inminutes/utils/themes.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {Key? key,
      required this.text,
      this.onPressed,
      this.height,
      this.vendor,
      this.isCustomer})
      : super(key: key);
  final String text;
  final bool? isCustomer;

  final int? height;
  final bool? vendor;

  final dynamic onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: vendor != null
                ? Color(0xffFFC727)
                : isCustomer == null
                    ? Colors.white
                    : Colors.black,
            borderRadius: BorderRadius.circular(5)),
        width: MediaQuery.of(context).size.width,
        child: Center(
            child: Text(text,
                style: lightMode.textTheme.bodySmall!.copyWith(
                    color: isCustomer != null ? Colors.white : Colors.black))),
      ),
    );
  }
}

// Rider app button

class ReUsableButton extends StatelessWidget {
  const ReUsableButton(
      {Key? key,
      this.onPressed,
      this.height,
      required this.widgets,
      this.isCustomer})
      : super(key: key);

  final int? height;
  final bool? isCustomer;
  final dynamic onPressed;

  final Widget widgets;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
            color: isCustomer == null ? Colors.white : Colors.black,
            borderRadius: BorderRadius.circular(5)),
        width: MediaQuery.of(context).size.width,
        child: Center(child: widgets),
      ),
    );
  }
}
