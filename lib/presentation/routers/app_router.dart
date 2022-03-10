import 'package:flutter/material.dart';
import 'package:medcentrservis/presentation/pages/category/sub_category_page.dart';

import '../../core/constants/routes.dart';
import '../pages/home/home_page.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case Routes.subcategory:
        return MaterialPageRoute(
          builder: (_) => const SubCategoryPage(),
        );

      default:
        throw UnimplementedError('No defined route: ${settings.name}');
    }
  }
}
