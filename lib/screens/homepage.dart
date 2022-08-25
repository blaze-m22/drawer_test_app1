import 'package:carousel_pro/carousel_pro.dart';
import 'package:drawer_test_app1/components/homegrid1.dart';
import 'package:drawer_test_app1/components/titles1.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget> [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          height: 200,
          width: double.infinity,
          child: Carousel(
            images: const [
              NetworkImage(
                  'https://images.unsplash.com/photo-1660128732590-dd15f5f8282e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              NetworkImage(
                  'https://images.unsplash.com/photo-1660089798136-561ab369d205?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
              NetworkImage(
                  'https://images.unsplash.com/photo-1660098932627-4bc1c76fb483?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
            ],
            dotSize: 4,
            dotSpacing: 15,
            dotColor: Colors.black,
            indicatorBgPadding: 4,
            radius: const Radius.circular(10),
            dotBgColor: Colors.black26,
            borderRadius: true,
            moveIndicatorFromBottom: 200,
            noRadiusForIndicator: false,
            animationDuration: const Duration(milliseconds: 500),
          ),
        ),
        ItemTitles1(titlename: 'Daily Essentials'),
        const CircleListCategory(),
        TitleImages1(imgaddress: 'assets/images/banner1.png'),
        const HomeGrid1(),
      ],
    );
  }
}











class CircleListCategory extends StatelessWidget {
  const CircleListCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 90,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CircleListCategoryItem(
            imagelocation:
            'assets/images/bnc.png',
            imagecaption: 'Biscuits',
          ),
          CircleListCategoryItem(
            imagelocation:
            'assets/images/snacks.png',
            imagecaption: 'Snacks',
          ),
          CircleListCategoryItem(
            imagelocation:
            'assets/images/dnp.png',
            imagecaption: 'Pulses',
          ),
          CircleListCategoryItem(
            imagelocation:
            'assets/images/household.png',
            imagecaption: 'Household care',
          ),
          CircleListCategoryItem(
            imagelocation:
            'assets/images/fruitsnveg.png',
            imagecaption: 'Fruits & Vegetables',
          ),
          CircleListCategoryItem(
            imagelocation:
            'assets/images/dairyneggs.png',
            imagecaption: 'Dairy & Eggs',
          ),
        ],
      ),
    );
  }
}

class CircleListCategoryItem extends StatelessWidget {
  final String imagelocation;
  final String imagecaption;

  CircleListCategoryItem({
    required this.imagelocation,
    required this.imagecaption,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(200)),
            color: Colors.white,
            border: Border.all(
              color: Colors.white10,
              width: 0.5,
            ),
          ),
          width: 88,
          height: 90,
          child: ListTile(
            title: Image.asset(
              alignment: Alignment.topCenter,
              imagelocation,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(
                imagecaption,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
