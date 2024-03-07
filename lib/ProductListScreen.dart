import 'package:flutter/material.dart';
import 'package:toko_buah/ProductDetailScreen.dart';
import 'package:toko_buah/Product.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> produk = [
    Product(
      nama: 'Apple', 
      deskripsi: 'Buah apel segar dan manis', 
      gambar: 'assets/image/Apple.jpg'
    ),
    Product(
      nama: 'Pisang', 
      deskripsi: 'Buah pisang matang dan legit', 
      gambar: 'assets/image/Pisang.jpg'
    ),
    Product(
      nama: 'Jeruk', 
      deskripsi: 'Buah jeruk kaya vitamin C', 
      gambar: 'assets/image/jeruk.jpg'
    ),
    Product(
      nama: 'Mangga', 
      deskripsi: 'Buah mangga manis dan harum', 
      gambar: 'assets/image/Mangga.jpg'
    ),
    Product(
      nama: 'Alpukat', 
      deskripsi: 'Buah alpukat segar dan kaya antioksidan', 
      gambar: 'assets/image/Alpukat.jpg'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
      ),
      body: ListView.builder(
        itemCount: produk.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, ProductDetailScreen.routeName, arguments: produk[index]);
            },
            child: Card(
              child: ListTile(
                title: Text(produk[index].nama),
                subtitle: Text(produk[index].deskripsi),
                leading: Image.asset(produk[index].gambar),
              ),
            ),
          );
        },
      ),
    );
  }
}
