import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String name = "Yaruna Yasas";
  String details = "1 review 5 photos";
  String comment = "THere is an amazingsakjdnjas ndsad  klasdkasnk dlasd ";
  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final userNmae = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontFamily: "Lato", fontSize: 17.0),
      ),
    );
    final userComments = Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0),
        child: Text(
          comment,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 13.0, fontWeight: FontWeight.w900),
        ));

    final userInfo = Container(
        margin: EdgeInsets.only(
          left: 20.0,
        ),
        child: Text(
          details,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato", fontSize: 13.0, color: Color(0xFFa3a5a7)),
        ));

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userNmae, userInfo, userComments],
    );

    final photo = Container(
      height: 100.0,
      width: 100.0,
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.fill,
        ),
        shape: BoxShape.circle,
      ),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
