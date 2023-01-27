import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImgList extends StatelessWidget {
  const CardImgList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350.0,
        child: ListView(
          padding: EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          children: [
            CardImage('assets/img/beach.jpeg'),
            CardImage('assets/img/mountain.jpeg'),
            CardImage('assets/img/river.jpeg'),
            CardImage('assets/img/sunset.jpeg'),
            CardImage('assets/img/beach_palm.jpeg'),
          ],
        ));
  }
}
