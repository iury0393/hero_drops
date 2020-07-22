import 'package:flutter/material.dart';
import 'package:hero_drops/constants.dart';
import 'package:hero_drops/models/heroes.dart';

import 'hero_thumbnail.dart';
import 'hero_genres.dart';
import 'hero_title.dart';
import 'hero_comics.dart';
import 'hero_stories.dart';
import 'hero_events.dart';
import 'hero_series.dart';

class Body extends StatelessWidget {
  final Heroes heroes;

  const Body({Key key, this.heroes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeroThumbnail(size: size, heroes: heroes),
          HeroTitle(heroes: heroes),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeroGenres(heroes: heroes),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding / 2,
                  horizontal: kDefaultPadding,
                ),
                child: Text(
                  "Biography",
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Text(
                  heroes.plot,
                  style: TextStyle(
                    color: Color(0xFF737599),
                  ),
                ),
              ),
              HeroComics(comics: heroes.cast),
              SizedBox(height: kDefaultPadding / 2),
              HeroStories(comics: heroes.cast),
              SizedBox(height: kDefaultPadding / 2),
              HeroEvents(comics: heroes.cast),
              SizedBox(height: kDefaultPadding / 2),
              HeroSeries(comics: heroes.cast),
              SizedBox(height: kDefaultPadding / 2),
            ],
          ),
        ],
      ),
    );
  }
}
