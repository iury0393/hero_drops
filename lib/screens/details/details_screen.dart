import 'package:flutter/material.dart';
import 'package:hero_drops/models/heroes.dart';
import 'package:hero_drops/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Heroes heroes;

  const DetailsScreen({Key key, this.heroes}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(heroes: heroes),
    );
  }
}
