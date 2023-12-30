import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/checkout/checkout_widget/checkout_card_widget.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class ReportAccountSettingView extends StatefulWidget {
  const ReportAccountSettingView({super.key});

  @override
  State<ReportAccountSettingView> createState() => _ReportAccountSettingViewState();
}

class _ReportAccountSettingViewState extends State<ReportAccountSettingView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, modelview, child) {
          return Scaffold(
            appBar: CustomAppBar(
              title: 'Reports',
              showBackButton: true,
              isCustomer : false
            ),
            backgroundColor: riderTheme.scaffoldBackgroundColor,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  card(Icons.cloud_download_outlined, 'Download  6 months financial report'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.file_copy_rounded , 'Report a withdraw problem'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.chat, 'Chat with an agent'),
                  SizedBox(
                    height: 20,
                  ),
                 
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
                    style: riderTheme.textTheme.headlineSmall!
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
