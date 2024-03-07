import 'package:flutter/material.dart';
import 'package:toko_buah/Product.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(product.gambar),
          SizedBox(height: 10),
          Text(product.nama, style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text(product.deskripsi),
        ],
      ),
    );
  }
}