import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/models/product_item.dart';

import '../../k_padding.dart';

class ECommerceItem extends StatelessWidget {
  final ProductItem item;
  final Function onPressed;
  final bool selected;
  const ECommerceItem({
    Key key,
    this.item,
    this.onPressed,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: EdgeInsets.all(kPadding),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: selected
                  ? Theme.of(context).primaryColor
                  : Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: Offset(4, 4),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(0.2),
                ),
              ],
            ),
            child: Hero(
              tag: "${item.uid}",
              child: Image.asset(
                item.image,
                fit: BoxFit.contain,
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kPadding / 4),
            child: Text(
              item.title,
              style: TextStyle(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          Text(
            "\$ ${item.amount}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: kPadding/2,)
        ],
      ),
    );
  }
}
