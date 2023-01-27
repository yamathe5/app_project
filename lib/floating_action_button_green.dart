import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreenState();
  }
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  var favorite = true;
  void onPressedFav() {
    setState(() {
      favorite = favorite ? false : true;
    });
    // ScaffoldMessenger.of(context)
    //     .showSnackBar(SnackBar(content: Text('Agregaste a favoritos')));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Color(0xFF11DA53),
        mini: true,
        tooltip: 'fav',
        onPressed: onPressedFav,
        child: Icon(favorite ? Icons.star : Icons.favorite_border));
  }
}
