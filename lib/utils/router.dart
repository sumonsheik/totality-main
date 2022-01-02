import 'package:flutter/material.dart';
import 'package:totality/loginscreen.dart';
import 'package:totality/signup/password.dart';
import 'package:totality/signup/signup_complete.dart';
import 'package:totality/signup/username.dart';
import 'package:totality/splash_screen.dart';

Route<dynamic> genrateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ('/'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => SignupComplete());
    case ('/log-in'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => LoginScreen());

    default:
      return MaterialPageRoute(
          settings: settings, builder: (context) => SplashScreen());
  }
}
