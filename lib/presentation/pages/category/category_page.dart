import 'package:flutter/material.dart';
import 'package:medcentrservis/core/constants/slider_image.dart';
import 'package:medcentrservis/presentation/pages/category/widgets/category_item.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../../core/app_theme/app_theme.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final maxWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 30.h)),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colors.shadowColor.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Напечатайте, что ищете...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      appTheme.radius.small,
                    ),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 4.h)),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return CategoryItem(
                  image: categoryImageTitle[index]["image1"]!,
                  title: categoryImageTitle[index]["title"]!,
                  index: index);
            }, childCount: categoryImageTitle.length),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 50.h)),
        ],
      ),
    );
  }
}
