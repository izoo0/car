// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:car/screens/HomeView.dart';
import 'package:car/utils/myTheme.dart';
import 'package:car/utils/widget_function.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  const CarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                color: COLOR_BLUE,
                width: 350,
                height: 650,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 350,
                height: 360,
                color: Colors.black,
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 960,
                width: 160,
                color: COLOR_SECONDARY,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 140,
              child: Image.asset(
                'assets/images/bugghati.png',
                height: 600,
                width: 600,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text(
                          'Bugatti',
                          style: TextStyle(
                            color: COLOR_WHITE,
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Chiron',
                          style: TextStyle(
                            color: COLOR_WHITE,
                            fontSize: 40,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 200,
              left: 20,
              child: Column(children: [
                Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'H-P',
                              style: themeData.textTheme.headline4,
                            ),
                            Text(
                              '56454',
                              style: themeData.textTheme.headline5,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 2,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(166, 158, 158, 158),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))),
                      ),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'B-S',
                              style: themeData.textTheme.headline4,
                            ),
                            Text(
                              'Convertable',
                              style: themeData.textTheme.headline5,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 2,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(166, 158, 158, 158),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))),
                      ),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'T-C',
                              style: themeData.textTheme.headline4,
                            ),
                            Text(
                              '1250k',
                              style: themeData.textTheme.headline6,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: COLOR_SECONDARY,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                      right: 15,
                      top: 15,
                      child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          )),
                    )
                  ],
                ),
                addVerticalSpace(20),
                Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                          top: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'H-P',
                              style: themeData.textTheme.headline4,
                            ),
                            Text(
                              '56454',
                              style: themeData.textTheme.headline5,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 2,
                          ),
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(166, 158, 158, 158),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20))),
                      ),
                    )
                  ],
                ),
              ]),
            ),
            Positioned(
              bottom: 20,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'V8 6.2l',
                      style: themeData.textTheme.headline4,
                    ),
                    addVerticalSpace(10),
                    Text(
                      'This car designed Prototype 100',
                      style: themeData.textTheme.headline5,
                    ),
                    Text(
                      'the stable of vision grand terismo',
                      style: themeData.textTheme.headline5,
                    ),
                    addVerticalSpace(20),
                    Container(
                        width: 440,
                        height: 70,
                        alignment: Alignment.center,
                        child: Text(
                          'Rent Now',
                          style: themeData.textTheme.headline2,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40)))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
