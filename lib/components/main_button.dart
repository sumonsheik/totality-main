import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:totality/Constants/app_colors..dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final press;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Container(
        width: screenwidth,
        child: TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(yellowLight),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ))),
            onPressed: () {
              press;
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenheight * 0.01,
              ),
              child: Text(text!,
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.headline1!.merge(
                          TextStyle(
                              fontSize: screenwidth * 0.04, color: textLight),
                        ),
                  )),
            )));
  }
}
