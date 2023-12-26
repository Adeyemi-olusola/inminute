// import 'package:ets_driver/screen/widgets/button/button.dart';
// import 'package:flutter/material.dart';
// import 'package:loading_animation_widget/loading_animation_widget.dart';

// class DialogBox {
//   void sshowDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierColor: const Color.fromARGB(219, 24, 26, 32),
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           backgroundColor: Theme.of(context).cardColor,
//           title: CircleAvatar(
//             radius: 70,
//             backgroundColor: Theme.of(context).primaryColor,
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 'Congratulations !',
//                 style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                     color: Theme.of(context).primaryColor,
//                     fontSize: 24,
//                     fontWeight: FontWeight.w700),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Text(
//                 'Your account is ready to use. You will redirected to the home page in a few seconds',
//                 textAlign: TextAlign.center,
//                 style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                     fontSize: 14, fontWeight: FontWeight.w400, height: 1.5),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(40.0),
//                 child: LoadingAnimationWidget.hexagonDots(
//                   color: Theme.of(context).primaryColor,
//                   size: 48,
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void showUsableDialog(BuildContext context, String mainText, String subText) {
//     showDialog(
//       context: context,
//       barrierColor: const Color.fromARGB(219, 24, 26, 32),
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(10.0),
//           ),
//           backgroundColor: Theme.of(context).cardColor,
//           title: CircleAvatar(
//             radius: 70,
//             backgroundColor: Theme.of(context).primaryColor,
//           ),
//           content: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Text(
//                   mainText,
//                   style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                       color: Theme.of(context).primaryColor,
//                       fontSize: 24,
//                       fontWeight: FontWeight.w700),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(19.0),
//                   child: Text(
//                     subText,
//                     textAlign: TextAlign.center,
//                     style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                         fontSize: 14, fontWeight: FontWeight.w400, height: 1.5),
//                   ),
//                 ),
//                  const SizedBox(
//                   height: 20,
//                 ),
//                 Padding(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
//                     child: Container(
//                       height: 40,
//                       child: MyButton(
//                         text: 'Go Back',
//                       ),
//                     )),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
