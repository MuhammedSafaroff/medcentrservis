import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../../../core/app_theme/app_theme.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key, required this.title, required this.image})
      : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Container(
      height: 100.h,
      padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 14.h, bottom: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(appTheme.radius.medium),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: const [-0.18, 0.65, 1.42],
          colors: [
            appTheme.colors.blue1,
            appTheme.colors.blue2,
            appTheme.colors.blue3,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colors.shadowColor.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            image,
            height: 40.h,
          ),
          SizedBox(height: 4.h),
          FittedBox(
            child: Text(
              title,
              style: appTheme.typography.spSemiBold600.copyWith(
                fontSize: 14.w,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
