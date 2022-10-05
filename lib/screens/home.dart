import 'package:ecom/compononts/home_grid_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
              "assets/images/drawer.png",
              height: 24,
            ),
          ),
        ),
        title: Text("Home",
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
      body: Column(
        children: [
          const SizedBox(height: 16,),
          SizedBox(
            height: 700,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.8
              ),
              children:  [
                HomeGridCard(label: "Giving", image: "heart.png", onPress: (){},),
                HomeGridCard(label: "IVP", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "ISOS", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "Stewardship", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "Store", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "Prayer Request", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "Testimonials", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "Notifications", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "Upload POP", image: "drawer.png", onPress: (){},),
                HomeGridCard(label: "Testimonials", image: "drawer.png", onPress: (){},),
              ],
            ),
          )
        ],
      ),
    );
  }
}
