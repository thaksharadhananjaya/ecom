import 'dart:core';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config.dart';

class BirthdayViewer extends StatelessWidget {
  final String date;
  BirthdayViewer({
    Key? key, required this.date,
  }) : super(key: key);

  String? val;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenwidth * 0.8,
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFE6E6E6)),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(right: 24),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: kPrimeryColor, borderRadius: BorderRadius.circular(8)),
              child: Image.asset('assets/images/calendar.png')),
          SizedBox(
              width: screenwidth * 0.8 - 90,
              child:date==''? Text(
                "Birthday",
                style: GoogleFonts.montserrat(
                    textStyle:  TextStyle(
                      color: Colors.grey[600],
                        fontSize: 16, fontWeight: FontWeight.w500)),
              ): Text(
                date,
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500)),
              )),
        ],
      ),
    );
  }
}
