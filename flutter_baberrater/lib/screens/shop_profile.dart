import 'package:flutter/material.dart';

class shop_profile extends StatelessWidget {
  const shop_profile({super.key});

  static const routeName = '/shop_Profile';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('shop profile'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.amber,
                      child: Text('profile picture'),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      alignment: Alignment.center,
                      color: Color.fromARGB(255, 255, 93, 64),
                      child: Text('bio'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    color: Colors.amberAccent,
                    child: Text('an employee'),
                  ),
                  const VerticalDivider(
                    width: 3,
                    thickness: 15,
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.amberAccent,
                    child: Text('an employee'),
                  ),
                  const VerticalDivider(
                    width: 3,
                    thickness: 15,
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.amberAccent,
                    child: Text('an employee'),
                  ),
                  const VerticalDivider(
                    width: 10,
                    thickness: 8,
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.amberAccent,
                    child: Text('an employee'),
                  ),
                  const VerticalDivider(
                    width: 10,
                    thickness: 15,
                    color: Colors.black,
                  ),
                  Container(
                    color: Colors.amberAccent,
                    child: Text('an employee'),
                  ),
                  const VerticalDivider(
                    width: 10,
                    thickness: 15,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                alignment: Alignment.center,
                color: Color.fromARGB(255, 64, 255, 80),
                child: Text('box for photos'),
              ),
            ),
            Expanded(
              flex: 5,
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    tileColor: Color.fromARGB(255, 64, 236, 255),
                    title: Text('review title'),
                    subtitle: Text('review'),
                  ),
                  ListTile(
                    tileColor: Color.fromARGB(255, 64, 236, 255),
                    title: Text('review title'),
                    subtitle: Text('review'),
                  ),
                  ListTile(
                    tileColor: Color.fromARGB(255, 64, 236, 255),
                    title: Text('review title'),
                    subtitle: Text('review'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
