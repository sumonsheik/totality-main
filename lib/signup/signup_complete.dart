import 'package:flutter/material.dart';
import 'package:totality/Constants/app_colors..dart';
import 'package:totality/Constants/images.dart';
import 'package:totality/components/main_button.dart';

class SignupComplete extends StatelessWidget {
  const SignupComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: appBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04),
          child: Column(
            children: [
              const Center(child: Text("Congratulations")),
              Center(
                child: Image.asset(
                  appLogo,
                  width: width * 0.6,
                ),
              ),
              SizedBox(
                height: screenheight * 0.03,
              ),
              const Center(
                child: Text(
                    "You have successfully created an AppTotality Acount."),
              ),
              SizedBox(
                height: screenheight * 0.03,
              ),
              const DefaultButton(text: 'Personalize Profile')
            ],
          ),
        ),
      ),
    );
  }
}
