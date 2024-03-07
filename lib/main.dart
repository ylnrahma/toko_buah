import 'package:flutter/material.dart';
import 'package:toko_buah/ProductListScreen.dart';
import 'package:toko_buah/ProductDetailScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Buah',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ProductListScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListScreen(),
        '/productDetail': (context) => ProductDetailScreen(),
      },
    );
  }
}