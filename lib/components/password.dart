import 'package:flutter/material.dart';

import '../constant.dart';

Widget getPasswordField() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    height: 50,
    padding: EdgeInsets.only(left: padding, right: padding),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "*************",
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
              obscureText: true,
            ),
          ),
        ),
        Icon(
          Icons.remove_red_eye,
          color: Color(0xff2196f3),
        )
      ],
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 3)
        ]),
  );
}