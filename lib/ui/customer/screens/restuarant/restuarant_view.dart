import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/home/home_widget/menucard_widget.dart';
import 'package:inminutes/ui/customer/screens/home/home_widget/top_scroll_widget.dart';
import 'package:inminutes/ui/customer/screens/restuarant/resturant_details_view.dart';
import 'package:inminutes/ui/customer/screens/restuarant/resturant_widget/restuarant_card_widget.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/input/search_input.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class RestruarantPgaeView extends StatefulWidget {
  const RestruarantPgaeView({super.key});

  @override
  State<RestruarantPgaeView> createState() => _RestruarantPgaeViewState();
}

class _RestruarantPgaeViewState extends State<RestruarantPgaeView> {
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
                    SearchInput(),
                    SizedBox(height: 20),
                    ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: () {
                                Get.to(RestruarantDetailView());
                              },
                              child: RestruarantCardWidget());
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
}
