import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/home/component/feature_plants.dart';
import 'package:flutter_plant_app/screens/home/component/header_with_search.dart';
import 'package:flutter_plant_app/screens/home/component/recomended_plants.dart';
import 'package:flutter_plant_app/screens/home/component/title_with_bbtn.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearch(size: size),
          TitleWithMore(
            title: 'Recomended',
            onPress: () {},
          ),
          RecomendedPlants(),
          TitleWithMore(
            title: 'Featured Plants',
            onPress: () {},
          ),
          FeaturePlants(),
        ],
      ),
    );
  }
}

