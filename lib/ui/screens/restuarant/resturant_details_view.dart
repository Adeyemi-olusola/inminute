import 'package:flutter/material.dart';
import 'package:inminutes/ui/screens/home/home_widget/menucard_widget.dart';
import 'package:inminutes/ui/screens/sign_up/sign_upform_view.dart';
import 'package:inminutes/ui/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/utils/themes.dart';
import 'package:stacked/stacked.dart';

class RestruarantDetailView extends StatefulWidget {
  const RestruarantDetailView({super.key});

  @override
  State<RestruarantDetailView> createState() => _RestruarantDetailViewState();
}

class _RestruarantDetailViewState extends State<RestruarantDetailView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3.6,
                    width: MediaQuery.of(context).size.width,
                    color: Color(0xff84AB8F),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black,
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Domino\'s pizza',
                                        style:
                                            lightMode.textTheme.headlineLarge,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'DavidsMikeyahoo.com',
                                        style:
                                            lightMode.textTheme.headlineSmall,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'DavidsMikeyahoo.com',
                                        style:
                                            lightMode.textTheme.headlineSmall,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                'Items Available in store',
                                style: lightMode.textTheme.headlineSmall!
                                    .copyWith(
                                        color: Colors.white, fontSize: 15),
                              ),
                              ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return MenuCardWidget();
                                  },
                                  separatorBuilder: (context, index) {
                                    return Container(
                                      height: 15,
                                    );
                                  },
                                  itemCount: 3)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  card(IconData icon, String text) {
    return Container(
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
