import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../core/app_theme/app_theme.dart';

class HomeItem extends StatelessWidget {
  const HomeItem(
      {Key? key, required this.title, this.isVertical = false, this.onTap})
      : super(key: key);
  final String title;
  final bool isVertical;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final maxWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: isVertical ? 16.w : 8.h,
          vertical: isVertical ? 8.h : 16.h),
      child: Container(
        height: 150.h,
        width: maxWidth - (isVertical ? 32.w : 64.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(appTheme.radius.medium),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 0,
              blurRadius: 16,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Material(
          borderRadius: BorderRadius.all(appTheme.radius.medium),
          child: InkWell(
            borderRadius: BorderRadius.all(appTheme.radius.medium),
            onTap: onTap ?? () {},
            child: Center(
              child: Text(
                title,
                style: appTheme.typography.sp24w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
