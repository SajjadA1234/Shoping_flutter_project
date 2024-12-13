import 'package:flutter/material.dart';

class ProductViewPage extends StatelessWidget {
  final String productName;

  ProductViewPage({required this.productName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
      ),
      body: Center(
        child: Text('Details for $productName will be shown here.'),
      ),
    );
  }
}
