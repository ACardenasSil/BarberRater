import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class feed_Screen extends StatelessWidget {
  const feed_Screen({super.key});

  static const routeName = '/feed_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('hello world'),
      ),
    );
  }
}
