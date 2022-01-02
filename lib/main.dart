// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:totality/Constants/app_colors..dart';
import 'package:totality/signup/password.dart';
import 'package:totality/signup/username.dart';
// import 'package:nft_social/getx/getx_controller.dart';
import 'package:totality/utils/router.dart' as router;
import 'package:flutter_easyloading/flutter_easyloading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // Get.put(getXcontroller());
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  // void firebaseSetup() async {
// permissions of fcm
  //   await Firebase.initializeApp();

  //   FirebaseMessaging messaging = FirebaseMessaging.instance;

  //   NotificationSettings settings = await messaging.requestPermission(
  //     alert: true,
  //     announcement: true,
  //     badge: true,
  //     carPlay: true,
  //     criticalAlert: true,
  //     provisional: false,
  //     sound: true,
  //   );

  //   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  //     print('User granted permission');
  //   } else if (settings.authorizationStatus ==
  //       AuthorizationStatus.provisional) {
  //     print('User granted provisional permission');
  //   } else {
  //     print('User declined or has not accepted permission');
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // firebaseSetup();

    // we apply listener on fcm message i.e. it will be called when we get fcm push notificaton when app is in foreground
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   print(message.notification);
    //   Get.snackbar(
    //     message.notification!.title.toString(),
    //     message.notification!.body.toString(),
    //     duration: const Duration(seconds: 5),
    //     onTap: (_) {
    //       navigatorKey.currentState?.pushNamed('/notification-screen');
    //     },
    //     snackPosition: SnackPosition.TOP,
    //   );

    //   if (message.notification != null) {
    //     print('Message also contained a notification: ${message.notification}');
    //   }
    // });

    // FirebaseMessaging.onMessageOpenedApp.listen((message) {
    //   navigatorKey.currentState?.pushNamed('/notification-screen');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      child: GetMaterialApp(
        navigatorKey: navigatorKey,

        title: 'Totality',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0)),
          textTheme: TextTheme(
            headline6: GoogleFonts.montserrat(
                fontSize: 26, fontWeight: FontWeight.bold, color: greyLight),
            headline5: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.normal, color: greyLight),
            headline4: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.normal, color: greyLight),
            headline3: GoogleFonts.montserrat(
                fontSize: 26, fontWeight: FontWeight.normal, color: greyLight),
            headline2: GoogleFonts.montserrat(
                fontSize: 25, fontWeight: FontWeight.w600, color: greyLight),
            headline1: GoogleFonts.montserrat(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
            subtitle2: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w600, color: greyLight),
            subtitle1: GoogleFonts.montserrat(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
            bodyText2: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.normal, color: greyLight),
            bodyText1: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),

        debugShowCheckedModeBanner: false,
        onGenerateRoute: router.genrateRoute,
        //  home: SplashScreen(),
        initialRoute: '/',
        routes: {
          '/username': (context) => Username(),
          '/password': (context) => const Password(),
        },
        builder: EasyLoading.init(),
      ),
    );
  }
}
