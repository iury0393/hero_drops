import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeroStories extends StatelessWidget {
  final List comics;

  const HeroStories({Key key, this.comics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Stories",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
