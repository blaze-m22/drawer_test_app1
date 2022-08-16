import 'package:flutter/material.dart';

import '../screens/homepage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  final List<Widget> _widgetOptions = const <Widget>[
    MyCart(),
    HomePage(),
    MyAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xF1e6efe5),
      appBar: AppBar(
        elevation: 0,
        title: const Text('Appbar'),
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(
        //     bottom: Radius.circular(30),
        //   ),
        // ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search_rounded,
              ), onPressed: () {  },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            SizedBox(
              child: UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/andrick.jpg'),
                ),
                accountName: Text(
                  "Andrick Da Silva",
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 18,
                  ),
                ),
                accountEmail: Text(
                  "andrick@gmail.com",
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        iconSize: 22,
        selectedFontSize: 12,
        selectedIconTheme: IconThemeData(color: Color(0xFF009743), size: 28),
        selectedItemColor: Color(0xFF009743),
        showUnselectedLabels: false,
        unselectedIconTheme: const IconThemeData(
          color: Colors.black45,
        ),
        unselectedItemColor: Colors.black45,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
