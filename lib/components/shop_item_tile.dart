import 'package:flutter/material.dart';

class ShopItemTile extends StatelessWidget {
  final String itemName;
  final String ItemPrice;
  final String ImagePath;
  final color;
  void Function()? onPressed;

  ShopItemTile(
      {super.key,
      required this.itemName,
      required this.ItemPrice,
      required this.ImagePath,
      this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              ImagePath,
              height: 64,
            ),
            Text(itemName),
            MaterialButton(
              onPressed: onPressed,
              color: color[800],
              child: Text(
                "\$" + ItemPrice,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
