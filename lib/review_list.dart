import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/beach.jpeg', 'Pedro', 'Pedro dice', 'Pedro comment'),
        Review('assets/img/people.jpg', 'Juan', 'Juan dice', 'Juan comment'),
        Review('assets/img/people.jpg', 'Juan', 'Juan dice', 'Juan comment'),
        Review('assets/img/people.jpg', 'Juan', 'Juan dice', 'Juan comment'),
      ],
    );
  }
}
