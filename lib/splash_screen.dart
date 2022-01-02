import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:totality/Constants/app_colors..dart';
import 'package:totality/Constants/images.dart';
// import 'package:nft_social/api/User/get_user_by_token.dart';
// import 'package:nft_social/api/User/sign_in_model.dart';
// import 'package:nft_social/functions/toasts.dart';
// import 'package:nft_social/getx/getx_controller.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // bool isloading = false;
  // bool loadingcheck = false;
  // final getController = Get.put(getXcontroller());

  // void checkIsLoggedIn() async {
  //   setState(() {
  //     loadingcheck = true;
  //   });
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   String? token = prefs.getString('bearer_token');
  //   print(token);

  //   if (token == null) {
  //     Future.delayed(const Duration(seconds: 3), () {
  //       Navigator.of(context).pushReplacementNamed('/walk-through');
  //     });
  //   } else {
  //     try {
  //       getUser(
  //         context: context,
  //       ).then((value) async {
  //         SignInModel signInModel = new SignInModel();
  //         signInModel.data = new SignInModelData();
  //         signInModel.data!.user = value;
  //         getController.sign_in_model.value = signInModel;

  //         print("all ok");
  //         Navigator.of(context).pushNamedAndRemoveUntil(
  //             '/app-home', (Route<dynamic> route) => false);
  //       }).onError((error, stackTrace) {
  //         print(error);
  //         Navigator.of(context).pushReplacementNamed('/sign-in');
  //       });
  //     } catch (e) {
  //       print(e);
  //       errorToast(e.toString(), context);
  //       Navigator.of(context).pushReplacementNamed('/sign-in');
  //     }
  //   }
  // }

  @override
  void initState() {
    super.initState();

    // checkIsLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appBackground,
      body: SingleChildScrollView(
        child: Container(
            height: height,
            width: width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Center(
                child: Image.asset(
                  appLogo,
                  width: width * 0.7,
                ),
              ),
            )),
      ),
    );
  }
}
