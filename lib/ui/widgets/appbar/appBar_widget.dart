import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onBackButtonPressed;

  CustomAppBar({
    required this.title,
    this.showBackButton = false,
    this.onBackButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: lightMode.textTheme.headlineLarge !.copyWith(fontSize: 26),
      ),
      centerTitle: true,
      backgroundColor: lightMode.scaffoldBackgroundColor,
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
                    color: Colors.white,
                  )),
              onPressed: onBackButtonPressed,
            )
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
