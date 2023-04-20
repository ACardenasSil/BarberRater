import 'package:flutter/material.dart';

class customer_signup extends StatefulWidget {
  static const routeName = '/customer_Signup';

  @override
  State<customer_signup> createState() => _customer_signupState();
}

class _customer_signupState extends State<customer_signup> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          key: formKey, //key for form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.04),
              const Text(
                "Customer",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 27, 49, 255)),
              ),
              const Text(
                "Signup Form",
                style: TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 27, 49, 255)),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Please enter a Vaild Name";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "UserName",
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z 0-9]+$').hasMatch(value)) {
                    return "Please enter a vaild username";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Email Address",
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+/.)+[\w{2,4}]$')
                          .hasMatch(value)) {
                    return "Please enter a vaild Email Address";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Phone Number",
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[+]*[(]{0,1}][0-9][1,3][)]{0,1}[-\s\./0-9]+$')
                          .hasMatch(value)) {
                    return "Please enter a vaild Phone Number";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Address",
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z 0-9]+$').hasMatch(value)) {
                    return "Please enter a vaild Address";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Password",
                ),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return "Please enter name correctly";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: height * 0.05,
              ),
              TextButton(
                onPressed: () {},
                child: Text('Signup'),
                style: TextButton.styleFrom(
                    foregroundColor: Color.fromARGB(255, 65, 48, 255),
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
