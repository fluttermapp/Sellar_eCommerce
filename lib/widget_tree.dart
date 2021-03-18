import 'package:flutter/material.dart';

import 'eCommerce/e_com_drawer.dart';
import 'eCommerce/e_com_item_description.dart';
import 'eCommerce/e_com_items.dart';
import 'responsive.dart';



class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile:ECommerceItems(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child:ECommerceItems(),
            ),
            Expanded(
              flex: 9,
              child: ECommerceItemDescription(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child:ECommerceItems(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: ECommerceItemDescription(),
            ),Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              child: ECommerceDrawer(),
            ),
          ],
        ),
      ),
    );
  }
}
