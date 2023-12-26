import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/account_seeting/account_setting_view.dart';
import 'package:inminutes/ui/customer/screens/login/login_view.dart';
import 'package:inminutes/ui/customer/screens/setting/setting_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/sign_upform_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/customer/screens/wishlist/wishlist_view.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width,
                        color: Color(0xff84AB8F),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 96, left: 20, right: 20),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    'Davids Mike',
                                    style: lightMode.textTheme.headlineLarge,
                                  ),
                                  Text(
                                    'DavidsMikeyahoo.com',
                                    style: lightMode.textTheme.headlineSmall,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      StatisticsCard(
                                        containerColor: Color(0xffFFF6E4),
                                        textColors: Color(0xffEAB348),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      StatisticsCard(
                                        containerColor: Color(0xffF3FFFA),
                                        textColors: Color(0xff008753),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      StatisticsCard(
                                        containerColor: Color(0xffFFEAE8),
                                        textColors: Color(0xffFF1400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  card(Icons.bookmark, 'Wishlist' , WishlistView()),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  card(Icons.person_outlined,
                                      'Account Settings' , AccountSettingView()),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  card(Icons.settings_outlined, 'Settings', SettingView()),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  card(Icons.logout_outlined, 'Log out', LoginView()),
                                   SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'Delete account',
                                    style: lightMode.textTheme.headlineSmall!
                                        .copyWith(
                                            color: Colors.grey, fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height / 5 - 76),
                        child: CircleAvatar(
                          radius: 76,
                          backgroundColor: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  card(IconData icon, String text, Widget widget) {
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

class StatisticsCard extends StatelessWidget {
  StatisticsCard({super.key, this.textColors, this.containerColor});
  Color? textColors;
  Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(7)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '10',
              style: lightMode.textTheme.headlineLarge!
                  .copyWith(color: textColors, fontSize: 30),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              'pending',
              style: lightMode.textTheme.headlineSmall!
                  .copyWith(color: textColors),
            ),
          ],
        ),
      ),
    );
  }
}
