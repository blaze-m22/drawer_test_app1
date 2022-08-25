import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class TestProductPage extends StatefulWidget {
  const TestProductPage({Key? key}) : super(key: key);

  @override
  State<TestProductPage> createState() => _TestProductPageState();
}

class _TestProductPageState extends State<TestProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xF1e6efe5),
      appBar: AppBar(
        title: const Text(
          "Spoonacular API products",
          style: TextStyle(color: Colors.white, fontFamily: "Roboto"),
        ),
      ),
      body: const TestProductPageValues(),
    );
  }
}

class TestProductPageValues extends StatefulWidget {
  const TestProductPageValues({Key? key}) : super(key: key);

  @override
  State<TestProductPageValues> createState() => _TestProductPageValuesState();
}

class _TestProductPageValuesState extends State<TestProductPageValues> {
  final url =
      "view-source:https://api.spoonacular.com/recipes/complexSearch?apiKey=a7a41b008431459f840838c777a706cd";

  final _postsJson = [
    {
      "title": "Vegetable Fried Rice",
      "image": "https://spoonacular.com/recipeImages/716426-312x231.jpg",
      "id": "716426",
    },
    {
      "title": "Garlic and Basil French Fries",
      "image": "https://spoonacular.com/recipeImages/715594-312x231.jpg",
      "id": "715594",
    },
  ];

/*
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
  void initState() {
    super.initState();
    fetchPosts();
  }
*/
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(5),
      itemCount: _postsJson.length,
      itemBuilder: (context, index) {
        return ProductStructure(
          pdtname: _postsJson[index]["title"],
          pdtimage: _postsJson[index]["image"],
          pdtid: _postsJson[index]["id"],
        );
      },
    );
  }
}

class ProductStructure extends StatelessWidget {
  final pdtname;
  final pdtimage;
  final pdtid;

  const ProductStructure({
    this.pdtname,
    this.pdtimage,
    this.pdtid,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        leading: SizedBox(
          width: 100,
          child: ClipRRect(
            child: Image.network(
              pdtimage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          pdtname,
          style: const TextStyle(
            fontFamily: 'Rubik',
            fontSize: 18,
          ),
        ),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'description',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'quantity',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 17),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "ID: $pdtid",
                    style: const TextStyle(
                      fontSize: 17,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Expanded(
                  child: Padding(padding: EdgeInsets.all(2)),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.only(top: 18, right: 2),
                  child: InkWell(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 7,
                        horizontal: 13,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF009743),
                        border: Border.all(
                          color: const Color(0xFF009743),
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
