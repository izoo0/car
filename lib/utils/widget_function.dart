import 'package:flutter/material.dart';
import 'package:car/utils/myTheme.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizantalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

class GridViewData extends StatelessWidget {
  final dynamic itemData;
  const GridViewData({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        margin: EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(itemData["image"]),
          // ignore: prefer_const_constructors
        ),
      ),
    );
  }
}
