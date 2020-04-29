import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

Widget getButton(String name) {
  return Container(
    margin: EdgeInsets.only(top: 30),
    height: 50,
    padding: EdgeInsets.only(left: padding, right: padding),
    child: Center(
      child: Text(
        name,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: Color(0xff2196f3)),
  );
}