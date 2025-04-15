import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems = [
    ['Avocado', '4.00', 'lib/images/avocado.png', Colors.green],
    ['banana', '2.00', 'lib/images/banana.png', Colors.yellow],
    ['chicken', '12.80', 'lib/images/chicken-leg.png', Colors.brown],
    ['water', '1.00', 'lib/images/water.png', Colors.blue],
  ];

  final List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  // add item
  void addItemCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}