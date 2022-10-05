import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeGridCard extends StatelessWidget {
  final String label;
  final String image;
  final Function onPress;
  const HomeGridCard({Key? key, required this.label, required this.image, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap:onPress() ,
          child: Container(
            width: 140,
            height: 100,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.only(left: 8, right: 8, bottom: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: Offset(2, 3),
                      color: Color.fromARGB(255, 233, 233, 233)),
                ]),
            child: Image.asset("assets/images/$image"),
          ),
        ),
        Text(label,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            )),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
