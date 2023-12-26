import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/login/login_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/outlineInput.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  String? otp;

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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enter Verification Code',
                    style: lightMode.textTheme.headlineLarge,
                  ),

                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'A one time 4-digit code has been sent to your number, do not share with anyone',
                    style: lightMode.textTheme.headlineSmall,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      onChanged: (value) {
                        setState(() {
                          otp = value;
                        });
                      },
                      textStyle: lightMode.textTheme.headlineSmall!.copyWith(fontSize: 15),
                      onCompleted: (value) {
                        // Called when the user has entered the complete OTP
                        // You can handle OTP verification here
                        print('Completed OTP: $value');
                      },
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape
                            .box, // Use box shape for outlined border
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 50,
                        
                        activeFillColor: Colors.red,
                        inactiveFillColor: Colors.white,
                        activeColor: Colors.white,
                        selectedColor: Color(0xff403F3F),
                        inactiveColor: Color(0xff403F3F),
                        borderWidth: 1, // Set the border width
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Didnt recieve the code',
                            ),
                            TextSpan(
                              text: 'Resend Code',
                            )
                          ])),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  MyButton(
                      text: 'Verify',
                      onPressed: () {
                        Get.to(LoginView(), transition: Transition.rightToLeft);
                      }),

                  // Text('By signing up, you agree to the Terms and Condition of the company')
                ],
              ),
            ),
          );
        });
  }
}
