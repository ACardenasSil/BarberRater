import 'package:flutter/material.dart';

class addPost extends StatefulWidget {
  const addPost({super.key});
  static const routeName = '/signup_signin_Screen';

  @override
  State<addPost> createState() => _addPostState();
}

class _addPostState extends State<addPost> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text('Username')),
          ),
          TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text('Password')),
          ),
          // ignore: prefer_const_constructors
          TextButton(
            onPressed: () {},
            child: Text(
              'SignIN',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
