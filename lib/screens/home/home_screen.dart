import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hero_drops/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'HERO DROPS',
        style: GoogleFonts.marvel(
          textStyle: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Color(0xFFED1D23),
          ),
        ),
      ),
      elevation: 0,
    );
  }
}
