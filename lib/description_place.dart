import 'package:flutter/material.dart';
import 'review_list.dart';
import 'review.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  String pathImage = "assets/img/people.jpg";
  String name = "Yaruna Yasas";
  String details = "1 review 5 photos";
  String comment = "THere is an amazingsakjdnjas ndsad  klasdkasnk dlasd ";

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);
  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: const EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );
    final star_border = Container(
      margin: EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 350.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(
              top: 350.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Text(
              namePlace,
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            )),
        Row(
          children: [star, star, star, star_border, star_border],
        ),
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: new Text(
        descriptionPlace,
        style: TextStyle(fontFamily: 'Lato', fontSize: 16.0),
        textAlign: TextAlign.left,
      ),
    );

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[title_stars, description, ButtonPurple('Navigate')]);
  }
}
