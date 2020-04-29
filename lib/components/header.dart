import 'package:flutter/material.dart';

Widget getHeader(String header) {
  return Container(
    margin: EdgeInsets.only(top: 45),
    child: Text(
      header,
      style: TextStyle(
          color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );
}
