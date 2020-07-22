import 'package:flutter/material.dart';

import '../../../constants.dart';

class HeroSeries extends StatelessWidget {
  final List comics;

  const HeroSeries({Key key, this.comics}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Series",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
