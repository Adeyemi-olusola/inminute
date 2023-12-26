import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inminutes/ui/screens/checkout/checkout_widget/checkout_card_widget.dart';
import 'package:inminutes/ui/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/editinput.dart';
import 'package:inminutes/ui/widgets/input/search_input.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';
import 'package:stacked/stacked.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, modelview, child) {
          return Scaffold(
            appBar: CustomAppBar(
              title: 'Checkout',
              showBackButton: true,
            ),
            backgroundColor: lightMode.scaffoldBackgroundColor,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return CheckoutMenuCardWidget();
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            height: 20,
                          );
                        },
                        itemCount: 2),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Delivery Details',
                      style: lightMode.textTheme.headlineLarge!
                          .copyWith(fontSize: 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Address : ',
                                  style: GoogleFonts.inter(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                                Icon(Icons.edit ,  size: 15)
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            OtherInput(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Contact : ',
                                  style: GoogleFonts.inter(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                                Icon(Icons.edit, size: 15)
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            OtherInput(),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Delivery fee :',
                                  style: GoogleFonts.inter(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '\$5.00',
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7d7d7d)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Distance',
                                  style: GoogleFonts.inter(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '25km',
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7d7d7d)),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Estimated arrival time :',
                                  style: GoogleFonts.inter(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '25 min',
                                  style: GoogleFonts.inter(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff7d7d7d)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(color: Color(0xffD9D9D9)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total '),
                                Text('\$85.00'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Continue Shopping',
                          style: lightMode.textTheme.bodySmall!
                              .copyWith(color: Colors.white),
                        ),
                        Container(
                            height: 45,
                            width: 200,
                            child: MyButton(text: 'Proceed to payment'))
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
