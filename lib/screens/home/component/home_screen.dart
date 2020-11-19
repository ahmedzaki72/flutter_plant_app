import 'package:flutter/material.dart';
import 'package:flutter_plant_app/components/bottom_nav_bar.dart';
import 'package:flutter_plant_app/screens/home/component/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildingAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  Widget buildingAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
    );
  }
}

