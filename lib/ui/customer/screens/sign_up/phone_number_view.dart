import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/login/login_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/otp_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/outlineInput.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class PhoneNumberView extends StatefulWidget {
  const PhoneNumberView({super.key});

  @override
  State<PhoneNumberView> createState() => _PhoneNumberViewState();
}

class _PhoneNumberViewState extends State<PhoneNumberView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: lightMode.scaffoldBackgroundColor,
            appBar: CustomAppBar(
                title: '', showBackButton: true, onBackButtonPressed: () {}),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Enter Your Phone',
                          style: lightMode.textTheme.headlineLarge,
                        ),
                        Text(
                          'Number',
                          style: lightMode.textTheme.headlineLarge,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'A 4-digit code will be sent to you number to to create your account',
                          style: lightMode.textTheme.headlineSmall,
                        ),
                        OutlineInput(
                          labelText: 'Phone Number',
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        MyButton(
                          text: 'Sign Up',
                          onPressed: () {
                            Get.to(OtpView(),
                                transition: Transition.rightToLeft);
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                height: 2,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                'or',
                                style: lightMode.textTheme.headlineSmall,
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                height: 2,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),

                           ReUsableButton(
                      widgets: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/svgs/google_logo.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Sign in with Google')
                        ],
                      ),
                    ),

                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(LoginView() , transition: Transition.leftToRight);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: 'Already have an account',
                                        style: lightMode
                                            .textTheme.headlineSmall!
                                            .copyWith(color: Colors.grey)),
                                    TextSpan(
                                        text: ' Login',
                                        style:
                                            lightMode.textTheme.headlineSmall!)
                                  ])),
                            ],
                          ),
                        ),

                        // Text('By signing up, you agree to the Terms and Condition of the company')
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'By signing up, you agree to the ',
                                style: lightMode.textTheme.headlineSmall!),
                            TextSpan(
                                text: 'Terms and Condition of the company',
                                style: lightMode.textTheme.headlineSmall!)
                          ])),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
