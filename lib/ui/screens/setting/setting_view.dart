import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/screens/checkout/checkout_widget/checkout_card_widget.dart';
import 'package:inminutes/ui/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';
import 'package:stacked/stacked.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, modelview, child) {
          return Scaffold(
            appBar: CustomAppBar(
              title: 'setting',
              showBackButton: true,
            ),
            backgroundColor: lightMode.scaffoldBackgroundColor,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  card(Icons.notifications, 'Notification settings'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.edit_document, 'Report a problem'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.pedal_bike_sharp, 'Become a rider'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.quick_contacts_mail_outlined, 'Customert suppot'),
                ],
              ),
            ),
          );
        });
  }

  card(IconData icon, String text) {
    return GestureDetector(
      onTap: () {
        Get.to(widget);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        height: 46,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    text,
                    style: lightMode.textTheme.headlineSmall!
                        .copyWith(color: Colors.black),
                  )
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 13,
              )
            ],
          ),
        ),
      ),
    );
  }
}
