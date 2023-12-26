import 'package:flutter/material.dart';
import 'package:inminutes/ui/customer/screens/checkout/checkout_widget/checkout_card_widget.dart';
import 'package:inminutes/ui/customer/screens/home/home_widget/menucard_widget.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/ui/widgets/button/button.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({super.key});

  @override
  State<WishlistView> createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, modelview, child) {
          return Scaffold(
            appBar: CustomAppBar(
              title: 'Wishlist',
              showBackButton: true,
            ),
            backgroundColor: lightMode.scaffoldBackgroundColor,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return MenuCardWidget();
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 20,
                        );
                      },
                      itemCount: 3),
                ],
              ),
            ),
          );
        });
  }
}
