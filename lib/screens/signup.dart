import 'package:ecom/compononts/birthday_viewer.dart';
import 'package:ecom/compononts/custom_button.dart';
import 'package:ecom/compononts/custom_dropdown.dart';
import 'package:ecom/compononts/password_feild.dart';
import 'package:ecom/config.dart';
import 'package:ecom/screens/signup_success.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../compononts/custom_textfeild.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String date = '';
  TextEditingController textEditingControllerFname = TextEditingController();
  TextEditingController textEditingControllerLname = TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  TextEditingController textEditingControllerPhone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Image.asset("assets/images/header_signup.jpg"),
          SizedBox(
             height: screenHeight*0.75,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //const SizedBox(height: 187, ),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  CustomTextFeild(
                    hint: 'Frist Name',
                    controller: textEditingControllerFname,
                    image: "user.png",
                  ),
                  CustomTextFeild(
                    hint: 'Last Name',
                    controller: textEditingControllerLname,
                    image: "user.png",
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
                  CustomDropDown(
                    onChange: (String value) {
                      print(value);
                    },
                  ),
                  CustomTextFeild(
                    hint: 'Phone Number',
                    controller: textEditingControllerPhone,
                    image: "call.png",
                    textInputType: TextInputType.phone,
                  ),
                  InkWell(
                      onTap: () => selectDate(),
                      child: BirthdayViewer(
                        date: date,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 32, bottom: 32),
                    child: CustomButton(label: "REGISTER", onPress: () {Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => const SignUpSuccess())));}),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",
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
                        onTap: () {Navigator.pop(context);},
                        child: Text("Signin here",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: kPrimeryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.underline),
                            )),
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

  Future<void> selectDate() async {
    final DateTime? picked = await showDatePicker(
      
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime.now());

    if (picked != null) {
      setState(() {
        date =
            "${picked.month.toString().padLeft(2, '0')}/${picked.day.toString().padLeft(2, '0')}/${picked.year} ";
      });
    }
  }
}
