import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopitems = [
    ["Avocado", "4.0", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.5", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "14.0", "lib/images/chicken.png", Colors.brown],
    ["Water", "1.0", "lib/images/water.png", Colors.blue],
  ];

  List _cartItems = [];

  get shopItems => _shopitems;
  get cartItems => _cartItems;

  void addToCart(int index) {
    _cartItems.add(_shopitems[index]);
    notifyListeners();
  }

  void removeItemFromCard(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
