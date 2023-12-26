import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/screens/home/home_view.dart';
import 'package:inminutes/ui/screens/navbar/navbar.dart';
import 'package:inminutes/ui/screens/sign_up/otp_view.dart';
import 'package:inminutes/ui/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/outlineInput.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';
import 'package:stacked/stacked.dart';

class SignUpFormView extends StatefulWidget {
  const SignUpFormView({super.key});

  @override
  State<SignUpFormView> createState() => _SignUpFormViewState();
}

class _SignUpFormViewState extends State<SignUpFormView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: lightMode.scaffoldBackgroundColor,
            appBar: CustomAppBar(
                title: 'Personal Information', showBackButton: true, onBackButtonPressed: () {}),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                
                 
                    OutlineInput(
                      labelText: 'Full Name',
                    ),
                
                    OutlineInput(
                      labelText: 'Display Name ',
                      obscureText: true,
                    ),
                      OutlineInput(
                      labelText: 'Email Address',
                      obscureText: true,
                    ),
                      OutlineInput(
                      labelText: 'Password',
                      obscureText: true,
                    ),
                      OutlineInput(
                      labelText: 'Confirm Password',
                      obscureText: true,
                    ),
                      OutlineInput(
                      labelText: 'Date Of Birth',
                      obscureText: true,
                    ),
                     OutlineInput(
                      labelText: 'Resident Address',
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
              
                    MyButton(
                      text: 'Confirm',
                      onPressed: () {
                        Get.to(Navbar(), transition: Transition.rightToLeft);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Don’t have an account yet ?',
                              ),
                              TextSpan(
                                text: 'Signup',
                              )
                            ])),
                      ],
                    ),
              
                    // Text('By signing up, you agree to the Terms and Condition of the company')
                  ],
                ),
              ),
            ),
          );
        });
  }
}
