import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  // value of products will never change
  final List<String> products;

  Products([this.products = const []]) {
    print('[Product widget] constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Product widget] build');
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
