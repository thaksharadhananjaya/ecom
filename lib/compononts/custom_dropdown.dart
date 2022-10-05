import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config.dart';

class CustomDropDown extends StatelessWidget {
  ValueChanged<String> onChange;

  CustomDropDown({Key? key, required this.onChange}) : super(key: key);

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
              child: Image.asset('assets/images/gender.png')),
          SizedBox(
            width: screenwidth * 0.8 - 90,
            child: DropdownButtonFormField(
              value: val,
              onChanged: (String? newValue) {
                val = newValue!;
                onChange(val!);
              },
              items: <String>['Male', 'Female']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                );
              }).toList(),
              decoration: InputDecoration(
                hintText: "Gender",
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
