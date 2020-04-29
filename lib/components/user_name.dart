import 'package:flutter/material.dart';

import '../constant.dart';

Widget getUserNameField() {
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
                  hintText: "login@gmail.com",
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
            ),
          ),
        ),
        Icon(
          Icons.done,
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
