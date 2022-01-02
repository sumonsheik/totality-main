import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:totality/Constants/app_colors..dart';
import 'package:totality/Constants/images.dart';
import 'package:totality/components/main_button.dart';

class Username extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();

  Username({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      backgroundColor: appBackground,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
        child: Column(
          children: [
            const Center(
              child: Text("Create your Username"),
            ),
            Center(
              child: Image.asset(
                appLogo,
                width: width * 0.6,
              ),
            ),
            SizedBox(
              height: screenheight * 0.03,
            ),
            TextFormField(
              controller: usernameController,
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
                hintText: 'Username',
                hintStyle: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.bodyText2!.merge(
                          TextStyle(fontSize: width * 0.04, color: textLight),
                        )),
              ),
            ),
            SizedBox(height: screenheight * 0.03),
            const DefaultButton(
              text: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
