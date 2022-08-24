import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/andrick.jpg'),
        ),
        Text(
          "Andrick Da Silv",
          style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 18,
          ),
        ),
        Text(
          "andrick@gmail.com",
          style: TextStyle(
            fontFamily: 'Rubik',
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
