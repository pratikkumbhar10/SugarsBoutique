import 'package:flutter/material.dart';
import 'package:sugars/Components/drawer.dart';
import 'package:sugars/Products/productDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "Wedding Dress",
      "picture": "images/dress.jpg",
      "price": 100,
    },
    {
      "name": "Dress",
      "picture": "images/dress.jpg",
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("All Products"),
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      drawer: new DrawerOnly(),
      body: GridView.builder(
        padding: EdgeInsets.all(2),
        itemCount: productList.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productName: productList[index]['name'],
            productPicture: productList[index]['picture'],
            productPrice: productList[index]['price'],
          );
        },
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;

  SingleProduct({this.productName, this.productPicture, this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                      //passing values from product to ProductDetails
                      productDetailsName: productName,
                      productDetailsPicture: productPicture,
                      productDetailsPrice: productPrice,
                    )));
          },
          child: GridTile(
            child: Image.asset(
              productPicture,
              fit: BoxFit.fitHeight,
            ),
            footer: Container(
              color: Colors.white54,
              child: ListTile(
                leading: Text(
                  productName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                title: Text(
                  "\$$productPrice",
                  textAlign: TextAlign.end,
                  
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
