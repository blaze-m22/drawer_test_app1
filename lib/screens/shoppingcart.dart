import 'package:drawer_test_app1/screens/testproducts.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xF1e6efe5),
      appBar: AppBar(
        leadingWidth: 40,
        centerTitle: true,
        backgroundColor: const Color(0xFF009743),
        title: const Text("Shopping Cart",
        style: TextStyle(
          fontWeight: FontWeight.normal,
        ),
        ),
      ),
      bottomNavigationBar: Container(
        alignment: Alignment.bottomRight,
        child: Row(
          children: <Widget>[
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(2),
              ),
            ),
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF009743),
                ),
                margin: const EdgeInsets.only(
                    right: 10, bottom: 10,
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: const Text(
                  "Add some products",
                  style: TextStyle(
                      color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Rubik'
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TestProductPage()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
