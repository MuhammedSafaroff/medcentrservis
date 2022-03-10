import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medcentrservis/core/constants/routes.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../../../core/app_theme/app_theme.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {Key? key, required this.title, required this.image, required this.index})
      : super(key: key);
  final String title;
  final String image;
  final int index;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.subcategory);
      },
      child: Container(
        height: 95.h,
        margin: EdgeInsets.only(top: 20.h),
        padding: EdgeInsets.symmetric(vertical: 14.w, horizontal: 14.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: appTheme.colors.shadowColor.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 58.h,
              width: 71.w,
              padding: EdgeInsets.symmetric(vertical: 14.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(appTheme.radius.medium),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: index % 2 == 0
                      ? const [-0.18, 0.65, 1.42]
                      : const [0.29, 1.06],
                  colors: index % 2 == 0
                      ? [
                          appTheme.colors.blue1,
                          appTheme.colors.blue2,
                          appTheme.colors.blue3,
                        ]
                      : [
                          appTheme.colors.reddish1,
                          appTheme.colors.reddish2,
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
              child: SvgPicture.asset(
                image,
                height: 40.h,
              ),
            ),
            SizedBox(width: 20.h),
            FittedBox(
              child: Text(
                title,
                style: appTheme.typography.spRegular400.copyWith(
                  fontSize: 20.w,
                  color: appTheme.colors.mainSolid,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
