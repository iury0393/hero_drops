import 'package:flutter/material.dart';
import 'package:hero_drops/components/heroes_card.dart';
import 'package:hero_drops/models/heroes.dart';

import '../../../constants.dart';

class HeroGenres extends StatelessWidget {
  const HeroGenres({
    Key key,
    @required this.heroes,
  }) : super(key: key);

  final Heroes heroes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: heroes.genra.length,
          itemBuilder: (context, index) => HeroesCard(
            type: heroes.genra[index],
          ),
        ),
      ),
    );
  }
}
