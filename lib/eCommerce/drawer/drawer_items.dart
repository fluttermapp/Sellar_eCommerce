import 'package:flutter/material.dart';

import '../../k_padding.dart';
import 'badge.dart';

class DrawerItems extends StatelessWidget {
  //This is for each item in the Drawer
  const DrawerItems({
    Key key,
    this.selected = false,
    this.number,
    @required this.icon,
    @required this.title,
    @required this.onPressed,
  }) : super(key: key);

  final bool selected;
  final int number;
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: (selected)
                ? Theme.of(context).primaryColor.withOpacity(0.9)
                : Colors.transparent,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: kPadding / 2),
            child: InkWell(
              onTap: onPressed,
              child: Row(
                children: [
                  SizedBox(width: kPadding / 3),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 15, right: 5),
                      child: Row(
                        children: [
                          Icon(
                            icon,
                            color: (selected)
                                ? Colors.white
                                : Theme.of(context).iconTheme.color,
                          ),
                          SizedBox(width: kPadding * 0.75),
                          Text(
                            title,
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: (selected)
                                          ? Colors.white
                                          : Colors.black.withOpacity(0.5),
                                    ),
                          ),
                          Spacer(),
                          if (number != null) Badge(number: number)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
