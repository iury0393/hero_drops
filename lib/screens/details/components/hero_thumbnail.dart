import 'package:flutter/material.dart';
import 'package:hero_drops/models/heroes.dart';

class HeroThumbnail extends StatelessWidget {
  const HeroThumbnail({
    Key key,
    @required this.size,
    @required this.heroes,
  }) : super(key: key);

  final Size size;
  final Heroes heroes;

  @override
  Widget build(BuildContext context) {
    return Container(
      // 40% of our total height
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(heroes.backdrop),
              ),
            ),
          ),
          SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}
