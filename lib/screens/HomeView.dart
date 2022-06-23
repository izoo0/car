// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:car/data/productData.dart';
import 'package:car/screens/carpage.dart';
import 'package:car/utils/myTheme.dart';
import 'package:car/utils/routes.dart';
import 'package:car/utils/widget_function.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import '../data/dealers.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final BorderRadius border_radius = BorderRadius.circular(20);
    final padding = EdgeInsets.symmetric(horizontal: 20, vertical: 5);
    final sidePadding = padding;
    return SingleChildScrollView(
      // scrollDirection: Axis.vertical,
      child: Column(
        children: [
          addVerticalSpace(10),
          Padding(
            padding: sidePadding,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_outlined),
                filled: true,
                hintText: 'Search type,category,location',
                fillColor: COLOR_BLUE2,
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          addVerticalSpace(30),
          Padding(
            padding: sidePadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Deals',
                  style: themeData.textTheme.headline1,
                ),
                Text(
                  'View All',
                  style: themeData.textTheme.headline2,
                ),
              ],
            ),
          ),
          addVerticalSpace(20),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: ProductData.map(
                    (itemData) => Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) => CarPage()));
                            },
                            child: Container(
                              height: 330,
                              width: 250,
                              decoration: BoxDecoration(
                                borderRadius: border_radius,
                                color: COLOR_SECONDARY,
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: sidePadding,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 25.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              itemData['brand'],
                                              itemData['model'],
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              itemData['price'],
                                              itemData['timelimit'],
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      ClipRRect(
                                        child: Image.asset(
                                          itemData['image'],
                                          height: 170,
                                          width: 210,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 20,
                          child: Container(
                            height: 60,
                            width: 130,
                            decoration: BoxDecoration(
                              color: COLOR_GREY,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Load More",
                                  style: TextStyle(
                                      color: COLOR_PRIMARY, fontSize: 15),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: COLOR_PRIMARY,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              height: 40,
                              width: 100,
                              // color: Colors.red,
                              child: Column(
                                children: [
                                  Text(
                                    "Details",
                                    style: themeData.textTheme.headline3,
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ).toList(),
                ),
              ),
            ),
          ),
          addVerticalSpace(30),
          Padding(
            padding: sidePadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Dealers',
                  style: themeData.textTheme.headline1,
                ),
                Text(
                  'View All',
                  style: themeData.textTheme.headline2,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 227,
              child: Row(
                children: dealers
                    .map(
                      (dealerData) => Padding(
                        padding: padding,
                        child: Container(
                          decoration: BoxDecoration(
                              color: COLOR_WHITE,
                              borderRadius: border_radius,
                              boxShadow: [
                                BoxShadow(
                                  color: COLOR_GREY2, //color of shadow
                                  spreadRadius: 5, //spread radius
                                  blurRadius: 15, // blur radius
                                  offset: Offset(0, 2),
                                ),
                              ]),
                          height: 190,
                          width: 150,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  dealerData['image'],
                                  height: 85,
                                  width: 85,
                                ),
                                dealerData['name'],
                                dealerData['offers']
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
