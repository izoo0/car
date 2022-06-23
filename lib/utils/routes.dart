import 'package:car/screens/HomeView.dart';
import 'package:flutter/material.dart';

import '../screens/carpage.dart';

class AppsRoute {
  static const home = '/';
  static const detailview = 'detailview';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        MaterialPageRoute(builder: (_) => HomeView());
        break;
      case detailview:
        MaterialPageRoute(builder: (_) => CarPage());
        break;
      default:
    }
  }
}
