import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget getSocialNetworkLoginWidget() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 40),
          child: CircleAvatar(
            backgroundColor: Colors.blueAccent,
            child: FaIcon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 40),
          child: CircleAvatar(
            backgroundColor: Colors.redAccent,
            child: FaIcon(
              FontAwesomeIcons.googlePlusG,
              color: Colors.white,
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.lightBlueAccent,
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}