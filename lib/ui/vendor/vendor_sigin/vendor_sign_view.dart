import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/rider/nav_bar/rider_navbar_view.dart';
import 'package:inminutes/ui/vendor/vendor_dashboard/vendor_dashboardview.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/outlineInput.dart';
import 'package:inminutes/utils/themes.dart';

class VendorSignInView extends StatefulWidget {
  @override
  State<VendorSignInView> createState() => _VendorSignInViewState();
}

class _VendorSignInViewState extends State<VendorSignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/rider_login/unsplash_DZe1jK6pk5c.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          // Bottom Modal Container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .58,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome Back!',
                      style: riderTheme.textTheme.headlineLarge!
                          .copyWith(fontSize: 23),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        'Kindly input your login details to access your account',
                        style: riderTheme.textTheme.headlineSmall!
                            .copyWith(color: Color(0xff898A8D)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    OutlineInput(
                      labelText: 'Email',
                      isCustomer: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OutlineInput(
                      labelText: 'Password',
                      obscureText: true,
                      isCustomer: false,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Forgot Password',
                      style: riderTheme.textTheme.headlineSmall!.copyWith(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyButton(
                      text: 'Login',
                      vendor: true,
                      isCustomer: false,
                      onPressed: () {
                        Get.to(VendorHomePageView(),
                            transition: Transition.leftToRight);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
