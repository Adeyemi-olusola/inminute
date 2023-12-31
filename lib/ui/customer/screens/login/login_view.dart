import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/login/login_service/login_service.dart';
import 'package:inminutes/ui/customer/screens/sign_up/otp_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/sign_upform_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/outlineInput.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:inminutes/utils/tools.dart' as tools;

class CustomerLoginView extends StatefulWidget {
  const CustomerLoginView({super.key});

  @override
  State<CustomerLoginView> createState() => _CustomerLoginViewState();
}

class _CustomerLoginViewState extends State<CustomerLoginView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: lightMode.textTheme.headlineLarge,
                    ),

                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'To access your account input your details',
                      style: lightMode.textTheme.headlineSmall,
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    OutlineInput(
                      labelText: 'Phone Number',
                      controller: phoneController,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    OutlineInput(
                      labelText: 'Password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    MyButton(
                      text: 'Login',
                      onPressed: () {
                        LogInService().login(context, {
                          "phoneNumber":
                              tools.convertPhoneNumber(phoneController.text),
                          "password": passwordController.text
                        });
                      },
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Don’t have an account yet ?',
                                  style: lightMode.textTheme.headlineSmall),
                              TextSpan(
                                  text: 'Signup',
                                  style: lightMode.textTheme.headlineSmall)
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
