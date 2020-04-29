import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/components/common_button.dart';

import 'components/header.dart';
import 'components/password.dart';
import 'components/user_name.dart';

const double border = 30;
const double padding = 20;

class SignUp extends StatelessWidget {
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    getHeader("Sign Up"),
                    getUserNameField(),
                    getUserNameField(),
                    getPasswordField(),
                    getPasswordField(),
                    LoginHelpActionWidget(),
                    getButton("Sign Up"),
                    getCreateAccountWidget(context)
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.white,
          ),
        );
      },
    );
  }

  Widget getCreateAccountWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 6),
            child: Text(
              "Already have an account?",
              style: TextStyle(color: Color(0xFF656C9D)),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              "Sign In",
              style: TextStyle(color: Color(0xff2196f3)),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginHelpActionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PrivacyPolicyAccept();
  }
}

class PrivacyPolicyAccept extends State<LoginHelpActionWidget> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: _isChecked,
                  onChanged: onChecked,
                  activeColor: Color(0xff2196f3),
                  checkColor: Colors.white,
                ),
                Text(
                  "By signing up you accept the ",
                  style: TextStyle(color: Color(0xff656C9D)),
                ),
                Text(
                  "Term of service",
                  style: TextStyle(color: Color(0xff2196f3)),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "and ",
                    style: TextStyle(color: Color(0xff656C9D)),
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(color: Color(0xff2196f3)),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  void onChecked(bool value) {
    setState(() {
      this._isChecked = !this._isChecked;
    });
  }
}
