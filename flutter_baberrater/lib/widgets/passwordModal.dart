import 'package:flutter/material.dart';
import '../screens/navBar.dart';

class PasswordModal extends StatefulWidget {
  const PasswordModal({super.key});
  static const routeName = '/signup_signin_Screen';

  @override
  State<PasswordModal> createState() => _PasswordModalState();
}

class _PasswordModalState extends State<PasswordModal> {
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
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(navBar.routeName);
              },
              child: Text('test'))
        ],
      ),
    );
  }
}
