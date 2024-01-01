import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:inminutes/ui/customer/screens/navbar/navbar.dart';
import 'package:inminutes/ui/customer/screens/sign_up/otp_view.dart';
import 'package:inminutes/ui/customer/screens/sign_up/sign_upform_view.dart';
import 'package:inminutes/ui/widgets/loaders/loaders_widget.dart';
import 'package:inminutes/utils/network.dart';
import 'package:inminutes/utils/tools.dart' as tools;

class SignUpService {
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) return null;

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print("Error signing in with Google: $e");
      return null;
    }
  }

  //get Otp

  getOtp(context, dynamic body) {
    // AboutMePage();
    Loaders().showModalLoading(context);
    print(body);
    HttpRequest('auth/verify/phone-number/send-code',
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

      Get.off(OtpView(phone: body));
    }, onFailure: (_, result) {
      // Get.back();

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
