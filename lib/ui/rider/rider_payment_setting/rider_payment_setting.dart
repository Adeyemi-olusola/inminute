import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/checkout/checkout_widget/checkout_card_widget.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class RiderPaymentSettingsView extends StatefulWidget {
  const RiderPaymentSettingsView({super.key});

  @override
  State<RiderPaymentSettingsView> createState() =>
      _RiderPaymentSettingsViewState();
}

class _RiderPaymentSettingsViewState extends State<RiderPaymentSettingsView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, modelview, child) {
          return Scaffold(
            appBar: CustomAppBar(
                title: 'Payment settings',
                showBackButton: true,
                isCustomer: false),
            backgroundColor: riderTheme.scaffoldBackgroundColor,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  card(Icons.person_2_outlined, 'Change payment method'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.money, 'Add new payment option'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.warning_amber, 'Complain'),
                  SizedBox(
                    height: 20,
                  ),
                  card(Icons.support_agent_outlined, 'Customer support'),
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
