import 'package:flutter/material.dart';
import 'package:sugars/HomePage/HomePage.dart';
import 'package:sugars/Products/products.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: '/',
    routes: {
      '/': (context) => HomePage(),
      '/ProductsPage': (context) => Products()
    },

    //home: HomePage(),
  ));
}
