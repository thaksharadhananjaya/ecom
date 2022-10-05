import 'package:ecom/compononts/custom_button.dart';
import 'package:ecom/compononts/password_feild.dart';
import 'package:ecom/config.dart';
import 'package:ecom/screens/reset.dart';
import 'package:ecom/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../compononts/custom_textfeild.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Image.asset("assets/images/header_signin.png"),
          SizedBox(
            height: screenHeight * 0.60,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //const SizedBox(height: 187, ),
                  Text(
                    "Sign In",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),

                  CustomTextFeild(
                    hint: 'Email',
                    controller: textEditingControllerEmail,
                    image: "email.png",
                    textInputType: TextInputType.emailAddress,
                  ),
                  PasswordFeild(
                    controller: textEditingControllerPassword,
                  ),
                  SizedBox(
                    width: screenWidth * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => ResetPass())));},
                          child: Text("Forget Password",
                              textAlign: TextAlign.right,
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: Color(0xFFFE9063),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 32),
                    child: CustomButton(
                        label: "SIGN IN",
                        onPress: () {
                          
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      InkWell(
                        onTap: () {},
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const SignUp())));
                          },
                          child: Text("Signup here",
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                    color: kPrimeryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline),
                              )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
