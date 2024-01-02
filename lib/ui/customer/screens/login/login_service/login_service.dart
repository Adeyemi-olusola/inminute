import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:inminutes/ui/customer/screens/home/home_view.dart';
import 'package:inminutes/ui/customer/screens/navbar/navbar.dart';
import 'package:inminutes/ui/customer/screens/sign_up/otp_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/sign_upform_view.dart';
import 'package:inminutes/ui/widgets/loaders/loaders_widget.dart';
import 'package:inminutes/utils/network.dart';
import 'package:inminutes/utils/tools.dart' as tools;

class LogInService {
  //get Otp

  login(context, dynamic body) {
    // AboutMePage();
    Loaders().showModalLoading(context);
    print(body);
    HttpRequest('customers/login',
        context: context,
        body: body,
        shouldPopOnError: false, onSuccess: (_, result) async {
      // tools.putInStore('accessToken', result['data']['access_token']);
      // UserData userData = await ProfileViewModel().getUserData(context);
      // ProfileViewModel().UsersData(userData);
      // var state = Provider.of<PropertyState>(context, listen: false);

      //tate.getPropertyType(context);
      // print('${ProfileViewModel().userData}');

      // tools.putInStore('email', body['email']);
      // tools.putInStore('password', body['password']);

      Get.to(HomePageView(), transition: Transition.rightToLeft);
    }, onFailure: (_, result) {

      Get.back();

      //debugPrint(result);
      return;
    }).send();
  }

  //verify otp

  verifyOtp(context, dynamic body) {
    // AboutMePage();
    Loaders().showModalLoading(context);
    print(body);
    HttpRequest('auth/verify/phone-number/check-code',
        context: context,
        body: body,
        shouldPopOnError: false, onSuccess: (_, result) async {
      // tools.putInStore('accessToken', result['data']['access_token']);
      // UserData userData = await ProfileViewModel().getUserData(context);
      // ProfileViewModel().UsersData(userData);
      // var state = Provider.of<PropertyState>(context, listen: false);

      //tate.getPropertyType(context);
      // print('${ProfileViewModel().userData}');

      // tools.putInStore('email', body['email']);
      // tools.putInStore('password', body['password']);

      Get.off(SignUpFormView());
    }, onFailure: (_, result) {
      // Get.back();

      //debugPrint(result);
      return;
    }).send();
  }

  // register

  register(context, dynamic body) {
    // AboutMePage();
    Loaders().showModalLoading(context);
    print(body);
    HttpRequest('customers/signup',
        context: context,
        body: body,
        shouldPopOnError: false, onSuccess: (_, result) async {
      tools.putInStore('accessToken', result['data']['accessToken']);
      // UserData userData = await ProfileViewModel().getUserData(context);
      // ProfileViewModel().UsersData(userData);
      // var state = Provider.of<PropertyState>(context, listen: false);

      //tate.getPropertyType(context);
      // print('${ProfileViewModel().userData}');

      tools.putInStore('email', body['email']);
      tools.putInStore('password', body['password']);

      Get.to(Navbar(), transition: Transition.rightToLeft);
    }, onFailure: (_, result) {
      // Get.back();

      //debugPrint(result);
      return;
    }).send();
  }
}
