import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPress;
  CustomButton(
      {Key? key,
      required this.label,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return MaterialButton(
      height: 60,
      minWidth: screenwidth*0.8,
      color: kPrimeryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: ()=> onPress(),
      child: Text(
        label,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
