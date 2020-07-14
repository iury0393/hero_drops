import 'package:flutter/material.dart';
import 'package:hero_drops/constants.dart';

import 'categories.dart';
import 'hero_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Categorylist(),
          SizedBox(height: kDefaultPadding),
          HeroCarousel(),
        ],
      ),
    );
  }
}
