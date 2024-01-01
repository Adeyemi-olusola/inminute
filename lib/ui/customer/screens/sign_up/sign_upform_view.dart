import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/home/home_view.dart';
import 'package:inminutes/ui/customer/screens/navbar/navbar.dart';
import 'package:inminutes/ui/customer/screens/sign_up/otp_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/sign_up_service/sign_up_service.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/outlineInput.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';
import 'package:inminutes/utils/tools.dart' as tools;

class SignUpFormView extends StatefulWidget {
  const SignUpFormView({super.key});

  @override
  State<SignUpFormView> createState() => _SignUpFormViewState();
}

class _SignUpFormViewState extends State<SignUpFormView> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController displayNameController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  TextEditingController dobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: lightMode.scaffoldBackgroundColor,
            appBar: CustomAppBar(
                title: 'Personal Information',
                showBackButton: true,
                onBackButtonPressed: () {}),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OutlineInput(
                      labelText: 'Full Name',
                      controller: fullNameController,
                    ),

                    OutlineInput(
                      labelText: 'Display Name ',
                      controller: displayNameController,
                    ),
                    OutlineInput(
                      labelText: 'Email Address',
                      controller: emailAddressController,
                    ),

                    OutlineInput(
                      labelText: 'phone Number',
                      controller: phoneController,
                    ),
                    OutlineInput(
                      labelText: 'Password',
                      obscureText: true,
                      controller: passwordController,
                    ),
                    OutlineInput(
                      labelText: 'Confirm Password',
                      controller: confirmPasswordController,
                      obscureText: true,
                    ),
                    OutlineInput(
                      labelText: 'Date Of Birth',
                      controller: dobController,
                      onTap: () async {
                        var date = await tools.showDatePickerDialog(context);
                        print(date);
                        setState(() {
                          dobController.text = date!;
                        });
                      },
                    ),
                    OutlineInput(
                      labelText: 'Resident Address',
                      controller: addressController,
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    MyButton(
                      text: 'Confirm',
                      onPressed: () {
                        var body = {
                          "fullName": fullNameController.text,
                          "displayName": displayNameController.text,
                          "phoneNumber":
                              tools.convertPhoneNumber(phoneController.text),
                          "password": passwordController.text,
                          "email": emailAddressController.text,
                          "dateOfBirth": dobController.text,
                          "address": addressController.text
                        };
                        SignUpService().register(context, body);
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
