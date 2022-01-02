// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:totality/Constants/app_colors..dart';
import 'package:totality/Constants/images.dart';
import 'package:totality/components/main_button.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isloading = false;
  bool logincheck = false;
  bool loggedin = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String token = "";
  @override
  void initState() {
    super.initState();
    // var messaging = FirebaseMessaging.instance;
    // messaging.getToken().then((value) {
    //   setState(() {
    //     token = value;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    appLogo,
                    width: width * 0.6,
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.1,
                ),
                TextFormField(
                  style: const TextStyle(color: textLight),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 2, color: greyLight),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 2, color: blueLight),
                    ),

                    hintText: 'Email, Phone Number or Username',
                    hintStyle: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.bodyText2!.merge(
                              TextStyle(
                                  fontSize: width * 0.04, color: textLight),
                            )),
                    // controller: usernameController,
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.02,
                ),
                TextFormField(
                  style: const TextStyle(color: textLight),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 2, color: greyLight),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 2, color: blueLight),
                    ),

                    hintText: 'Password',
                    hintStyle: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.bodyText2!.merge(
                              TextStyle(
                                  fontSize: width * 0.04, color: textLight),
                            )),
                    // controller: usernameController,
                  ),
                ),
                SizedBox(
                  height: screenheight * 0.03,
                ),
                Text("Forgot Password?",
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.headline1!.merge(
                            TextStyle(
                                fontSize: width * 0.04,
                                fontStyle: FontStyle.italic,
                                color: blueLight),
                          ),
                    )),
                SizedBox(
                  height: screenheight * 0.03,
                ),
                const DefaultButton(
                  text: "Log In",
                ),
                SizedBox(
                  height: screenheight * 0.03,
                ),
                Text("Cancel",
                    style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.headline1!.merge(
                            TextStyle(
                                fontSize: width * 0.04, color: yellowLight),
                          ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
