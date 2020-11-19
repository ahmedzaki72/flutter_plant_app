import 'package:flutter/material.dart';
import 'package:flutter_plant_app/constants.dart';
import 'package:flutter_plant_app/screens/details/details_screen.dart';

class RecomendedPlants extends StatelessWidget {
  const RecomendedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedPlantsCart(
            image: 'assets/images/image_1.png',
            title: 'Samantha\n ',
            country: 'Russia',
            price: 440,
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          RecomendedPlantsCart(
            image: 'assets/images/image_2.png',
            title: 'Samantha\n ',
            country: 'Russia',
            price: 440,
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          RecomendedPlantsCart(
            image: 'assets/images/image_3.png',
            title: 'Samantha\n ',
            country: 'Russia',
            price: 440,
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
          ),
          SizedBox(
            width: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class RecomendedPlantsCart extends StatelessWidget {
  const RecomendedPlantsCart(
      {Key key, this.image, this.title, this.price, this.country, this.onPress})
      : super(key: key);

  final String image;
  final String title;
  final String country;
  final int price;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        width: size.width * 0.4,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50.0,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: title.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                            text: country.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            )),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
