import 'package:flutter/material.dart';

import 'package:app_project/review_list.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  String description =
      'loremloremloremloremlorem loremloremlorem loremlorem \nAAoremlorem Lorem lorem loremlorem';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace('namePlace', 4, description),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
