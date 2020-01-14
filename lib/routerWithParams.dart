import 'package:flutter/material.dart';

class Product {
  final String title; // 商品标题
  final String desc; // 商品描述
  Product(this.title, this.desc);
}

void main() {
  runApp(
    MaterialApp(
      title: '导航数据的传递和接收',
      home: ProductList(
        products: List.generate(
          20,
          (index) => Product('商品编号：$index', '商品$index是个很棒的产品')
        )
      ),
    )
  );
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({ Key key, @required this.products }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表页'),),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
          );
        },
      ),
    );
  }
}