import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/home/home_widget/menucard_widget.dart';
import 'package:inminutes/ui/customer/screens/home/home_widget/top_scroll_widget.dart';
import 'package:inminutes/ui/customer/screens/restuarant/restuarant_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/input/search_input.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
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
          backgroundColor: lightMode.scaffoldBackgroundColor,
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
                        Icon(
                          Icons.list,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 14,
                              color: Colors.white,
                            ),
                            Text('tgrtrtr' , style: lightMode.textTheme.headlineSmall!.copyWith(color: Colors.white),)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                              size: 20,
                            ),

                            SizedBox(width: 10,)
,

                            CircleAvatar(radius: 10,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SearchInput(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                          4,
                          (index) => InkWell(
                              onTap: () {
                                // nextPage(index);
                                Get.to(nextPage(index),
                                    transition: Transition.leftToRight);
                              },
                              child: TopScrollWidget())),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 140,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 25,
                      child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: selectedIndex == index
                                        ? Colors.white
                                        : Colors.black),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    titleList[index],
                                    style: lightMode.textTheme.headlineSmall!
                                        .copyWith(
                                            color: selectedIndex != index
                                                ? Colors.white
                                                : Colors.black),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Container(
                              width: 10,
                            );
                          },
                          itemCount: titleList.length),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
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
