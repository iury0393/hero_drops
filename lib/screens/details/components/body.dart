import 'package:flutter/material.dart';
import 'package:hero_drops/constants.dart';
import 'package:hero_drops/models/heroes.dart';

import 'backdrop_rating.dart';
import 'cast_and_crew.dart';
import 'genres.dart';
import 'title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  final Heroes heroes;

  const Body({Key key, this.heroes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, heroes: heroes),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabBtn(heroes: heroes),
          Genres(heroes: heroes),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              heroes.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: heroes.cast),
        ],
      ),
    );
  }
}
