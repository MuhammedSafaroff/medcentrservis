import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../core/app_theme/app_theme.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    this.onTap,
    required this.title,
    this.textColor,
    this.bgColor,
  }) : super(key: key);

  final VoidCallback? onTap;
  final String title;
  final Color? textColor;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);

    return Material(
      color: bgColor ?? appTheme.colors.red,
      borderRadius: BorderRadius.all(appTheme.radius.large),
      child: InkWell(
        borderRadius: BorderRadius.all(appTheme.radius.large),
        onTap: onTap,
        child: Container(
          width: 140.w,
          height: 44.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(appTheme.radius.large),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Center(
            child: Text(
              title,
              style: appTheme.typography.sp14w700.copyWith(
                color: textColor ?? Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
