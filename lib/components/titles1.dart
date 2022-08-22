import 'package:flutter/material.dart';

class ItemTitles1 extends StatelessWidget {
  final String titlename;

  ItemTitles1({
    required this.titlename,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        titlename,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: 'Rubik',
        ),
      ),
    );
  }
}

//---------------------------------------------------------------
/*
class HomeGrid11 extends StatefulWidget {
  const HomeGrid11({Key? key}) : super(key: key);

  @override
  State<HomeGrid11> createState() => _HomeGrid11State();
}

class _HomeGrid11State extends State<HomeGrid11> {
  var grid1itemlist = [
    {
      "imgaddr": "assets/images/household.png",
      "imgcaption": "Household1",
    },
    {
      "imgaddr": "assets/images/household.png",
      "imgcaption": "Household2",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(5),
      itemCount: 2,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Grid1Item(
          hg1imgaddr: grid1itemlist[index]["imgaddr"],
          hg1imgcaption: grid1itemlist[index]["imgcaption"],
        );
      },
    );
  }
}

class Grid1Item extends StatelessWidget {

  final hg1imgaddr;
  final hg1imgcaption;

  const Grid1Item({
    this.hg1imgaddr,
    this.hg1imgcaption,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black54,
        ),
      ),
      child: Column(
        children: <Widget> [
          Image.asset(
            hg1imgaddr,
            width: 100,
          ),
          Text(
            hg1imgcaption,
            style: const TextStyle(
              fontFamily: 'Rubik',
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}



class HomeGrid1 extends StatelessWidget {
  const HomeGrid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: const Color(0x26730FFF),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const Text(
            'Test GridView 1',
            style: TextStyle(
              fontFamily: 'Rubik',
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          Center(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              primary: false,
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'House Hold',
                ),
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'House Hold2',
                ),
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'House Hold3',
                ),
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'House Hold4',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class Grid1Items extends StatelessWidget {
  final String grid1img;
  final String grid1text;

  Grid1Items({
    required this.grid1img,
    required this.grid1text,
});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        color: Colors.black12,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black54,
          ),
        ),
        child: Column(
          children: <Widget> [
            Image.asset(
              grid1img,
              width: 100,
            ),
            Text(
              grid1text,
              style: const TextStyle(
                fontFamily: 'Rubik',
                fontSize: 10,
              ),
            ),
          ],
        ),
      );
  }
}
*/



class TitleImages1 extends StatelessWidget {
  final String imgaddress;

  TitleImages1({
    required this.imgaddress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: double.infinity,
      height: 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imgaddress,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
    );
  }
}
