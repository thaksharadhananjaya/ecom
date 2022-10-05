import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config.dart';

class ResetTextFeild extends StatelessWidget {

  final TextEditingController controller;

  ResetTextFeild(
      {Key? key,
   
      required this.controller,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth * 0.8,
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF0026B9)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(right: 24),
            padding: const EdgeInsets.all(8),
          
                child: Image.asset('assets/images/reset_mail.png')
          ),
          SizedBox(
            width: screenwidth * 0.8 - 90,
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
             
              style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
              decoration: InputDecoration(
                
                hintText: "Email",
                hintStyle: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
