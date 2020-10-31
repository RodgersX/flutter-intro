import 'package:flutter/material.dart';

import 'package:flutter_course/products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print('[ProductManager widget] constructor');
  }

  @override
  _ProductManagerState createState() {
    print('[ProductManager widget] creatState');
    return _ProductManagerState();
  } 
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('[ProductManager state] initState');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductManager oldWidget) {
    print('[ProductManager state] didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager state] build');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
