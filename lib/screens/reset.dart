import 'package:ecom/compononts/reset_mailfeild.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../compononts/custom_button.dart';


class ResetPass extends StatelessWidget {
   ResetPass({Key? key}) : super(key: key);

  TextEditingController textEditingControllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/images/back.png",
            ),
          ),
        ),
        title: Text("Reset Password",
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 64, bottom: 56),
              child: Image.asset(
                "assets/images/reset.png",
                height: screenHeight * 0.22,
              ),
            ),
            Text(
                "Please enter your email to receive a\nlink, to create new password via Email.",
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 80, bottom: 20),
                  child: ResetTextFeild(controller: textEditingControllerEmail),
                ),
            CustomButton(label: "Reset Password", onPress: () {})
          ],
        ),
      ),
    );
  }
}
