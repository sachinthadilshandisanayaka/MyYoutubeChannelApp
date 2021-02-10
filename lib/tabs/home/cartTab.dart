import 'package:flutter/material.dart';

class CartTabs extends StatefulWidget {
  CartTabs({Key key}) : super(key: key);

  @override
  _CartTabsState createState() => _CartTabsState();
}

class _CartTabsState extends State<CartTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Cart'),
    );
  }
}
