import 'package:flutter/material.dart';

import '../k_padding.dart';
import '../responsive.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'drawer/drawer_items.dart';

class ECommerceDrawer extends StatelessWidget {
  const ECommerceDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kPadding : 0),
      color: Theme.of(context).accentColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/sellar.png",
                    width: 150,
                  ),
                  Spacer(),
                  //if (!ResponsiveLayout.isMacbook(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: kPadding),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  width: 300,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          vertical: kPadding,
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.white.withOpacity(0.8))),
                  child: Text(
                    "Register",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: kPadding * 2),
              DrawerItems(
                onPressed: () {},
                title: "Your Account",
                icon: Icons.person_outline_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Your Orders",
                icon: Icons.cloud_circle_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Shop",
                icon: Icons.shopping_bag_outlined,
                selected: true,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Security",
                icon: Icons.lock_outline_rounded,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Your Payments",
                icon: Icons.payment,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Gift Cards",
                icon: Icons.card_giftcard,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Communication",
                icon: Icons.drafts_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Messages",
                icon: Icons.message_outlined,
                number: 2,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Notifications",
                icon: Icons.notifications_active_outlined,
              ),
              DrawerItems(
                onPressed: () {},
                title: "Advertising",
                icon: Icons.account_box_outlined,
              ),

              SizedBox(height: kPadding * 2),
            ],
          ),
        ),
      ),
    );
  }
}
