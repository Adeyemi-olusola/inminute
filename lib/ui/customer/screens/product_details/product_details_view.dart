import 'package:flutter/material.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            backgroundColor: lightMode.scaffoldBackgroundColor,
            body: Column(
              children: [
                Container(
                  height: 390,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                        ),
                        Text('dfdgdgfgfgfg')
                      ],
                    ),
                    Icon(
                      Icons.heart_broken_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Amala',
                      style: lightMode.textTheme.headlineLarge,
                    ),
                    Text(
                      '100',
                      style: lightMode.textTheme.headlineLarge,
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
