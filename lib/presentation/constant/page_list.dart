import 'package:flutter/material.dart';
import 'package:medcentrservis/presentation/pages/address/address_page.dart';
import 'package:medcentrservis/presentation/pages/category/category_page.dart';
import 'package:medcentrservis/presentation/pages/home/home_page.dart';

class PageList {
  static List<Widget> pageList = const [
    HomePage(),
    CategoryPage(),
    AddressPage(),
  ];
}
