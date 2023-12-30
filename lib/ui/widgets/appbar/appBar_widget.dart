import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/utils/themes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onBackButtonPressed;
  final bool? isCustomer;

  CustomAppBar(
      {required this.title,
      this.showBackButton = false,
      this.onBackButtonPressed,
      this.isCustomer});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: lightMode.textTheme.headlineLarge!.copyWith(
          fontSize: 26,
          color: isCustomer == null ? Colors.white : Colors.black,
        ),
      ),
      centerTitle: true,
      backgroundColor:  isCustomer == null ? lightMode.scaffoldBackgroundColor: riderTheme.scaffoldBackgroundColor,
      elevation: 0,
      automaticallyImplyLeading: showBackButton,
      leading: showBackButton
          ? IconButton(
              icon: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: isCustomer == null ? Colors.white : Colors.black,
                  )),
              onPressed: onBackButtonPressed,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
