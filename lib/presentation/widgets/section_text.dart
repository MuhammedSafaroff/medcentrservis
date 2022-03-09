import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../core/app_theme/app_theme.dart';

class SectionText extends StatelessWidget {
  const SectionText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Text(
        title,
        style: appTheme.typography.sp24w700,
      ),
    );
  }
}
