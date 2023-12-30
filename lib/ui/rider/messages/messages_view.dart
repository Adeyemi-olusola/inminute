import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inminutes/ui/customer/screens/sign_up/signup_viewmodel.dart';
import 'package:inminutes/ui/rider/messages/message_details_view.dart';
import 'package:inminutes/ui/widgets/appbar/appBar_widget.dart';
import 'package:inminutes/utils/themes.dart';
import 'package:stacked/stacked.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({super.key});

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  List<String> titleList = [
    'All',
    'Ongoing',
    'Completed',
    'Dispute',
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => SignupViewModel(),
        builder: (context, viewmodel, child) {
          return Scaffold(
            appBar: CustomAppBar(
              title: 'Message',
              showBackButton: true,
              isCustomer: false,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  color: selectedIndex != index
                                      ? Colors.white
                                      : Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  titleList[index],
                                  style: lightMode.textTheme.headlineSmall!
                                      .copyWith(
                                          color: selectedIndex == index
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
                  SizedBox(
                    height: 20,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(ChatScreen());
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffDEDEDE), width: 1),
                                borderRadius: BorderRadius.circular(5.5)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 23,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'David Mike',
                                            style: riderTheme
                                                .textTheme.headlineLarge!
                                                .copyWith(fontSize: 19),
                                          ),
                                          Container(
                                            color: Color.fromARGB(
                                                80, 255, 217, 145),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                'ongoing trip',
                                                style: lightMode
                                                    .textTheme.headlineSmall!
                                                    .copyWith(
                                                        color:
                                                            Color(0xffFBA500),
                                                        fontSize: 8),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      Text('David Mike'),
                                    ],
                                  ))
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Container(
                          height: 10,
                        );
                      },
                      itemCount: 2)
                ],
              ),
            ),
          );
        });
  }
}
