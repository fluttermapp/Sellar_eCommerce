/* import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget iphone;
  final Widget ipad;
  final Widget macbook;

  const ResponsiveLayout({
    Key key,
    @required this.iphone,
    @required this.ipad,
    @required this.macbook,
  }) : super(key: key);

  static bool isIphone(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isIpad(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isMacbook(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return macbook;
        } else if (constraints.maxWidth >= 650) {
          return ipad;
        } else {
          return iphone;
        }
      },
    );
  }
}
 */