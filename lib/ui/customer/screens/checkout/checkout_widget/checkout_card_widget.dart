import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inminutes/utils/themes.dart';

class CheckoutMenuCardWidget extends StatelessWidget {
  const CheckoutMenuCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 94,
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
                         SizedBox(height: 5,),
                        Text(
                          'Quantity',
                          style: GoogleFonts.inter(
                              color: Color.fromARGB(255, 20, 22, 27), fontSize: 8),
                        ),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Container(
                               height: 12,
                              width: 12,
                              color: Color(0xff797676),
                              child: Center(child: Text('-', style: lightMode.textTheme.headlineSmall)),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: Text('1' , style: lightMode.textTheme.headlineSmall!.copyWith(color: Colors.black),),
                            ),
                            Container(
                              height: 12,
                              width: 12,
                              color: Color(0xff797676),
                              child: Center(child: Text('+', style: lightMode.textTheme.headlineSmall)),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$20.00',
                          style: GoogleFonts.inter(
                              color: Colors.black, fontSize: 10),
                        ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                                Text(
                          'Sub Total ',
                          style: GoogleFonts.inter(
                              color: Colors.black, fontSize: 6),
                        ),
                              Text(
                              '\$20.00',
                              style: GoogleFonts.inter(
                                  color: Colors.black, fontSize: 10),
                        ),
                            ],
                          ),
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
