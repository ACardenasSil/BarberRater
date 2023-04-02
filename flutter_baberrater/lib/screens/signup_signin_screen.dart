import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_baberrater/screens/navBar.dart';
import 'barber_signup.dart';
import 'feed.dart';

class signup_signin extends StatelessWidget {
  const signup_signin({super.key});

  static const routeName = '/signup_signin_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SIGN UP / SIGN IN'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(barber_signup.routeName);
              },
              child: Text('sign up'),
            ),
          ),
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(barber_signup.routeName);
              },
              child: Text('sign up'),
            ),
          ),
          Container(),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(barber_signup.routeName);
            },
            child: Text('sign up'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(navBar.routeName);
            },
            child: Text('sign in'),
          ),
        ],
      ),
    );
  }
}
