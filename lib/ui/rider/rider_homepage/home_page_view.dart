import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/home/home_widget/menucard_widget.dart';
import 'package:inminutes/ui/customer/screens/home/home_widget/top_scroll_widget.dart';
import 'package:inminutes/ui/customer/screens/restuarant/restuarant_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/ui/widgets/input/search_input.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class RiderHomePageView extends StatefulWidget {
  const RiderHomePageView({super.key});

  @override
  State<RiderHomePageView> createState() => _RiderHomePageViewState();
}

class _RiderHomePageViewState extends State<RiderHomePageView> {
  List<String> lust = ['ffg', 'gfg'];
  List<String> titleList = [
    'Nearby',
    'Popular',
    'African',
    'Nearby',
    'Popular',
    'African',
    'Nearby',
    'Popular',
    'African'
  ];

  int? selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SignupViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: riderTheme.scaffoldBackgroundColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hello , tgrtrtr',
                            style: riderTheme.textTheme.headlineSmall!
                                .copyWith(fontSize: 17)),
                        Row(
                          children: [
                            Icon(
                              Icons.support_agent_sharp,
                              color: Colors.black,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.black,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.black,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Total Balance : ',
                                      style: lightMode.textTheme.headlineSmall,
                                    ),
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ],
                                ),
                                Text(
                                  'Transaction history',
                                  style: lightMode.textTheme.headlineSmall!
                                      .copyWith(fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            Text(
                              '20,000',
                              style: lightMode.textTheme.headlineSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Oustanding : ',
                                  style: lightMode.textTheme.headlineSmall,
                                ),
                                Text(
                                  '20,000',
                                  style: lightMode.textTheme.headlineSmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total earning ',
                                      style: lightMode.textTheme.headlineSmall,
                                    ),
                                    Text(
                                      '20,000',
                                      style: lightMode.textTheme.headlineSmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 17),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 60,
                                      child: ReUsableButton(
                                          widgets: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          //  Icon(Icons.)
                                          Text(
                                            'Cashout',
                                            style: riderTheme
                                                .textTheme.headlineSmall,
                                          )
                                        ],
                                      )),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 60,
                                      child: ReUsableButton(
                                          widgets: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Icon(Icons)
                                          Text(
                                            'Transfer',
                                            style: riderTheme
                                                .textTheme.headlineSmall,
                                          )
                                        ],
                                      )),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 25,
                                      width: 50,
                                      child: ReUsableButton(
                                          widgets: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Icon(Icons)
                                          Text(
                                            'save',
                                            style: riderTheme
                                                .textTheme.headlineSmall,
                                          )
                                        ],
                                      )),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
                        Text('Incoming Order '),
                        Text(
                          '0:15',
                          style: lightMode.textTheme.headlineSmall!
                              .copyWith(color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Color(0xff008753)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Text(
                              'Accept',
                              style: lightMode.textTheme.headlineSmall,
                            ),
                          ),
                        ), 

                           Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            child: Text(
                              'Decline',
                              style: lightMode.textTheme.headlineSmall!.copyWith(color: Colors.red),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget nextPage(int index) {
    Widget widget = Container();
    switch (index) {
      case 0:
        widget = RestruarantPgaeView();
        break;
      default:
    }
    return widget;
  }
}
