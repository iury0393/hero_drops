import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:hero_drops/models/heroes.dart';
import 'package:hero_drops/screens/details/details_screen.dart';
import '../../../constants.dart';

class HeroCard extends StatelessWidget {
  final Heroes heroes;

  const HeroCard({Key key, this.heroes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: OpenContainer(
        closedElevation: 0,
        openElevation: 0,
        closedBuilder: (context, action) => buildHeroCard(context),
        openBuilder: (context, action) => DetailsScreen(heroes: heroes),
      ),
    );
  }

  Container buildHeroCard(BuildContext context) {
    return Container(
      color: Color(0xFF303030),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [kDefaultShadow],
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(heroes.poster),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          ),
        ],
      ),
    );
  }
}
