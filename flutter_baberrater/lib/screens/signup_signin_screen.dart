import 'package:flutter/material.dart';
import 'package:flutter_baberrater/screens/customer_signup.dart';
import 'package:flutter_baberrater/screens/shop_signup.dart';
import 'package:flutter_baberrater/widgets/passwordModal.dart';
import 'barber_signup.dart';
import 'feed.dart';
import 'navBar.dart';

class signup_signin extends StatelessWidget {
  const signup_signin({super.key});

  static const routeName = '/signup_signin_Screen';

  void _openSignInForm(BuildContext context) {
    showModalBottomSheet(context: context, builder: (ctx) => PasswordModal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIGN UP / SIGN IN'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/barber2.png"),
                    fit: BoxFit.fitWidth),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(barber_signup.routeName);
                },
                child: const Text(
                  'Barber sign up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/barber6.jpg"),
                    fit: BoxFit.fitWidth),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(shop_signup.routeName);
                },
                child: const Text(
                  'Shop sign up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            ),
            Container(height: 10),
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/barber1.png"),
                    fit: BoxFit.fitWidth),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(customer_signup.routeName);
                },
                child: Text(
                  'Client sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red.shade600,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _openSignInForm(context);
                //Navigator.of(context).pushReplacementNamed(navBar.routeName);
              },
              child: const Text(
                'SignIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
