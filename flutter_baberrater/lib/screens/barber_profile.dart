import 'package:flutter/material.dart';
import 'package:flutter_baberrater/screens/shop_profile.dart';

class barber_profile extends StatelessWidget {
  const barber_profile({super.key});

  static const routeName = '/barber_Profile';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barber'),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: <Widget>[
          const Divider(
            height: 8,
            thickness: 10,
            color: Colors.black,
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("./assets/images/shop1.jpeg"),
                    fit: BoxFit.fitWidth),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(barber_profile.routeName);
                },
                child: Text(
                  '',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red.shade600,
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 8,
            thickness: 10,
            color: Colors.black,
          ),
          Expanded(
            flex: 4,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("./assets/images/barberemp1.jpeg"),
                            fit: BoxFit.fitWidth),
                        color: Colors.blueAccent),
                  ),
                ),
                const VerticalDivider(
                  width: 3,
                  thickness: 15,
                  color: Colors.black,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    color: Colors.blueAccent,
                    child: const Text(
                      'Hey my name is luis gallardo I am the Owner and founder of Blue Collar Barber shop. Come by and let us get you ready for and event or your everyday lifestyle.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 8,
            thickness: 10,
            color: Colors.black,
          ),
          Expanded(
            flex: 5,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 300,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("./assets/images/haircut1.jpg"),
                          fit: BoxFit.fitWidth),
                      color: Colors.blueAccent),
                ),
                const VerticalDivider(
                  width: 3,
                  thickness: 15,
                  color: Colors.black,
                ),
                Container(
                  height: 300,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("./assets/images/haircut2.jpg"),
                          fit: BoxFit.fitWidth),
                      color: Colors.blueAccent),
                ),
                const VerticalDivider(
                  width: 3,
                  thickness: 15,
                  color: Colors.black,
                ),
                Container(
                  height: 300,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("./assets/images/haircut3.jpg"),
                          fit: BoxFit.fitWidth),
                      color: Colors.blueAccent),
                ),
                const VerticalDivider(
                  width: 3,
                  thickness: 15,
                  color: Colors.black,
                ),
                Container(
                  height: 300,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("./assets/images/haircut4.jpg"),
                          fit: BoxFit.fitWidth),
                      color: Colors.blueAccent),
                ),
                const VerticalDivider(
                  width: 3,
                  thickness: 15,
                  color: Colors.black,
                ),
                Container(
                  height: 300,
                  width: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("./assets/images/haircut5.jpg"),
                          fit: BoxFit.fitWidth),
                      color: Colors.blueAccent),
                ),
                const VerticalDivider(
                  width: 3,
                  thickness: 15,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          // Expanded(
          //   flex: 5,
          //   child: Container(
          //     width: double.infinity,
          //     height: 200,
          //     decoration: const BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage("../assets/images/shop1.jpeg"),
          //           fit: BoxFit.fitWidth),
          //     ),
          //     child: TextButton(
          //       onPressed: () {},
          //       child: Text(
          //         '',
          //         style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 20,
          //           color: Colors.red.shade600,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          const Divider(
            height: 8,
            thickness: 10,
            color: Colors.black,
          ),

          Expanded(
            flex: 5,
            child: ListView(
              children: const <Widget>[
                ListTile(
                  tileColor: Color.fromARGB(255, 66, 119, 217),
                  title: Text(
                    'Edgar Rosales',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      'Came through to this barbershop on a whim since Im from the Bay Area and I dont know any shops around here and man oh man am I impressed! Benzo was the man, took me in on a walk-in, and this dude HOOKED IT UP!! Left me feeling fresh and we talked about life, goals, and aspirations -- honestly a super down to earth dude and a super classy barber.'),
                ),
                Divider(
                  height: 8,
                  thickness: 10,
                  color: Colors.black,
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 25, 98, 243),
                  title: Text(
                    'Alonso chairs',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      "@Benzo is our barber and he is most excellent with little ones as well as big ones  I like a hard part or a sharp part and he accommodates. We are now training my son's hair in a little flip in the front. Like he's not handsome enough already  Bring cash."),
                ),
                Divider(
                  height: 8,
                  thickness: 10,
                  color: Colors.black,
                ),
                ListTile(
                  tileColor: Color.fromARGB(255, 25, 98, 243),
                  title: Text(
                    'Juan Sierra',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      'Was passing through and stop by for a walk in hair cut. I was welcomed right away and sat immediately. Very awesome staff and cool place. They really take the time to make sure they do a great job. If you are in the Bakersfield area stop by and get cleaned up.'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
