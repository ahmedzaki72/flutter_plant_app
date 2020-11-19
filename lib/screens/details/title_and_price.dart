import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';


class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.country,
    this.price,
  }) : super(key: key);
  final String title;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: title,
                  style: Theme.of(context).textTheme.headline4.copyWith(
                    color: kTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(color: kPrimaryColor, fontSize: 20.0, fontWeight: FontWeight.bold,),
                ),
              ],
            ),
          ),
          Spacer(),
          Text('\$$price', style: Theme.of(context).textTheme.headline5.copyWith(color: kPrimaryColor),),
        ],
      ),
    );
  }
}
