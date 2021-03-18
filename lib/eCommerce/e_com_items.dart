import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/eCommerce/e_com_drawer.dart';
import 'package:sellar_e_commerce/eCommerce/e_com_item_description.dart';
import 'package:sellar_e_commerce/models/product_item.dart';

import '../k_padding.dart';
import '../responsive.dart';
import 'items/categories.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'items/e_commerce_item.dart';

class ECommerceItems extends StatefulWidget {
  const ECommerceItems({
    Key key,
  }) : super(key: key);

  @override
  _ECommerceItemsState createState() => _ECommerceItemsState();
}

class _ECommerceItemsState extends State<ECommerceItems> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: ECommerceDrawer(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
        color: Theme.of(context).accentColor,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(
                    width: kPadding,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: kPadding, vertical: 4),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: Colors.white.withOpacity(0.5),
                          filled: true,
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(kPadding * 0.70),
                            child: Icon(Icons.search),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  /*  if (!ResponsiveLayout.isMacbook(context))
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldKey.currentState.openEndDrawer();
                      },
                    ), */
                  SizedBox(width: kPadding / 2)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kPadding),
                child: Text(
                  "Sellar eCommerce",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Categories(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding),
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: kPadding),
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: kPadding,
                      crossAxisSpacing: kPadding,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ECommerceItem(
                      /*  selected: ResponsiveLayout.isIphone(context)
                          ? false
                          : index == 0, */
                      item: products[index],
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ECommerceItemDescription(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
