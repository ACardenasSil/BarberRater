import 'package:flutter/material.dart';
import 'package:flutter_baberrater/widgets/addpostModal.dart';
import './screens/homescreen.dart';
import '../widgets/background.dart';
import './screens/AI_screen.dart';
import './screens/barber_profile.dart';
import './screens/barber_profile2.dart';
import './screens/barber_profile3.dart';
import './screens/barber_profile4.dart';
import './screens/barber_profile5.dart';
import './screens/barber_signup.dart';
import './screens/customer_signup.dart';
import './screens/feed.dart';
import './screens/map.dart';
import './screens/shop_profile.dart';
import './screens/shop_signup.dart';
import './screens/signup_signin_screen.dart';
import './screens/navBar.dart';
import './models/posts.dart';

/*
import 'dart:convert';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber Rater',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: homeScreen(),
      routes: {
        AI_screen.routeName: (ctx) => const AI_screen(),
        barber_profile.routeName: (ctx) => barber_profile(),
        barber_profile2.routeName: (ctx) => barber_profile2(),
        barber_profile3.routeName: (ctx) => barber_profile3(),
        barber_profile4.routeName: (ctx) => barber_profile4(),
        barber_profile5.routeName: (ctx) => barber_profile5(),
        barber_signup.routeName: (ctx) => barber_signup(),
        customer_signup.routeName: (ctx) => customer_signup(),
        feed_Screen.routeName: (ctx) => feed_Screen(),
        map_Screen.routeName: (ctx) => map_Screen(),
        shop_profile.routeName: (ctx) => shop_profile(),
        shop_signup.routeName: (ctx) => shop_signup(),
        signup_signin.routeName: (ctx) => signup_signin(),
        navBar.routeName: (ctx) => navBar(),
      },
    );
  }
}
