import 'package:flutter/material.dart';
import 'package:sellar_e_commerce/responsive_layout.dart';

import '../k_padding.dart';
import 'item_description/top_bar_description.dart';

class ECommerceItemDescription extends StatelessWidget {
  const ECommerceItemDescription({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              TopBarDescription(),
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("images/switch_logo.png"),
                      ),
                      SizedBox(width: kPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: "Sellar  ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          children: [
                                            TextSpan(
                                                text: "Platinum Member",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1
                                                    .copyWith(
                                                        color: Colors.black
                                                            .withOpacity(0.5))),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Nintendo Switch",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1
                                            .copyWith(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: kPadding / 2),
                                Text("\$ 298", style: TextStyle(fontSize: 20)),
                              ],
                            ),
                            SizedBox(height: kPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 840
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: List.generate(
                                            3,
                                            (index) => Container(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  "images/switch_$index.jpg",
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: kPadding * 3,
                                        ),
                                        if (constraints.maxWidth > 300)
                                          Container(
                                            width: constraints.maxWidth > 840
                                                ? 600
                                                : constraints.maxWidth - 200,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                "images/switch_box.jpg",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    Divider(thickness: 1),
                                    SizedBox(height: kPadding / 2),
                                    Text(
                                      "Three modes in one \n \nNintendo Switch is designed to fit your life, transforming from home console to portable system in a snap. \n\nDock your Nintendo Switch to enjoy HD gaming on your TV. \n\nFlip the stand to share the screen, then share the fun with a multiplayer game.\n\nPick it up and play with the Joy‑Con™ controllers attached.",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                      ),
                                    ),
                                    SizedBox(height: kPadding),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text("Reviews (33) ",
                                            style: TextStyle(fontSize: 15)),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_outline_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
