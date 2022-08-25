import 'dart:convert';

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
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          alignment: Alignment.centerLeft,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/andrick.jpg',
              width: 140,
              height: 140,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          child: const Text(
            "Andrick Da Silva",
            style: TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 20, 20, 5),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Mobile No',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 7, 0, 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '+91 9898989898',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 7, 0, 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'and002@chowgules.ac.in',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 7, 0, 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Hno 175, Benaulim, Salcete Goa',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Rubik',
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
/*
  final url = "view-source:https://api.spoonacular.com/recipes/complexSearch?apiKey=a7a41b008431459f840838c777a706cd";
  var _postsJson = [];

  void fetchPosts() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);

      setState(() {
        _postsJson = jsonData;
      });
    } catch (err) {}
  }

  @override
  void initState(){
    super.initState();
    fetchPosts();
  }
 */