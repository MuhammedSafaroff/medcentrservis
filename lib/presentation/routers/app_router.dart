import 'package:flutter/material.dart';

import '../../core/constants/routes.dart';
import '../pages/home/home_page.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );

      default:
        throw UnimplementedError('No defined route: ${settings.name}');
    }
  }
}
