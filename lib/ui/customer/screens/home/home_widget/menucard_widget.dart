import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inminutes/ui/customer/screens/checkout/checkout_view.dart';
import 'package:inminutes/utils/themes.dart';

class MenuCardWidget extends StatelessWidget {
  const MenuCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  width: 63,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chicken Periper',
                          style: GoogleFonts.inter(
                              color: Colors.black, fontSize: 14),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.red,
                            ),
                            Text(
                              'Chicken Periper',
                              style: GoogleFonts.inter(
                                  color: Color(0xff898a8d), fontSize: 8),
                            ),
                          ],
                        ),
                        Text(
                          '25km away',
                          style: GoogleFonts.inter(
                              color: Color(0xff898a8d), fontSize: 8),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$20.00',
                          style: GoogleFonts.inter(
                              color: Colors.black, fontSize: 10),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(CheckoutView(),
                                transition: Transition.leftToRight);
                          },
                          child: Container(
                            width: 100,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Color(0xff008753),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text(
                              'Add to Cart',
                              style: lightMode.textTheme.headlineSmall,
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
