import 'package:ecom/compononts/custom_button.dart';


import 'package:ecom/config.dart';
import 'package:ecom/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 56,
                ),
                Image.asset(
                  "assets/images/signup_success.png",
                  height: screenHeight * 0.42,
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  "Sign Up Was",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  "Successfull.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: kPrimeryColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 48),
                  child: Text("You can now start using\nthe Jesus application",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 32),
                  child: CustomButton(
                      label: "GO TO LOGIN",
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const SignIn())));
                      }),
                ),
                const SizedBox(
                  height: 32,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
