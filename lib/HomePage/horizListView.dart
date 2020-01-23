import 'package:flutter/material.dart';
import 'package:sugars/Products/products.dart';

class HorizonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'images/png/shirt.png',
            imageCaption: "All Products",
          ),
          Category(
            imageLocation: 'images/png/dress.png',
            imageCaption: "Dress",
          ),
          Category(
            imageLocation: 'images/png/trousers.png',
            imageCaption: "Jeans",
          ),
          Category(
            imageLocation: 'images/png/bag.png',
            imageCaption: "Bags",
          ),
          Category(
            imageLocation: 'images/png/shoe.png',
            imageCaption: "Shoes",
          ),
          Category(
            imageLocation: 'images/png/belt.png',
            imageCaption: "Accessories",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageCaption;

  Category({this.imageLocation, this.imageCaption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 2, 1, 2),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Products()));
        },
        child: Container(
          width: 90,
          child: ListTile(
              title: Image.asset(
                imageLocation,
                color: Colors.pinkAccent,
                width: 30,
                height: 50,
                fit: BoxFit.contain,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  imageCaption,
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                ),
              )),
          // decoration: new BoxDecoration(color: Colors.white)
        ),
      ),
    );
  }
}
