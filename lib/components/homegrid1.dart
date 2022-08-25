import 'package:flutter/material.dart';

class HomeGrid1 extends StatefulWidget {
  const HomeGrid1({Key? key}) : super(key: key);

  @override
  State<HomeGrid1> createState() => _HomeGrid1State();
}

class _HomeGrid1State extends State<HomeGrid1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 446,
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      color: const Color(0x420f7a2b),
      child:
          GridView.count(
            childAspectRatio: 0.92,
            padding: const EdgeInsets.all(10),
            primary: false,
            crossAxisCount: 2,
            children: <Widget> [

              Container(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Image(
                        image: AssetImage('assets/images/household.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        child: const Text(
                          'Grid Item1',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Image(
                        image: AssetImage('assets/images/household.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        child: const Text(
                          'Grid Item2',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Image(
                        image: AssetImage('assets/images/household.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        child: const Text(
                          'Grid Item3',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: Colors.white,
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      const Image(
                        image: AssetImage('assets/images/household.png'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 9),
                        child: const Text(
                          'Grid Item4',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
    );
  }
}

/*
class Grid1Items extends StatelessWidget {
  final String grid1img;
  final String grid1text;

  const Grid1Items({
    required this.grid1img,
    required this.grid1text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 200,
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: AssetImage(grid1img),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                grid1text,
                style: const TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
// --------------------------------------------
/*
import 'package:flutter/material.dart';

class HomeGrid1 extends StatefulWidget {
  const HomeGrid1({Key? key}) : super(key: key);

  @override
  State<HomeGrid1> createState() => _HomeGrid1State();
}

class _HomeGrid1State extends State<HomeGrid1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: const Color(0xFFc4ffd4),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const Text(
            'Test GridView 1',
            textAlign: TextAlign.start,
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
                crossAxisSpacing: 10,
              ),
              children: <Widget> [
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'item1',
                ),
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'item1',
                ),
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'item1',
                ),
                Grid1Items(
                  grid1img: 'assets/images/household.png',
                  grid1text: 'item1',
                ),
              ],
            )
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
    return Container(
      width: 180,
      height: 200,
      padding: const EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: Colors.white,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(
              image: AssetImage(grid1img),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                grid1text,
                style: const TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 */