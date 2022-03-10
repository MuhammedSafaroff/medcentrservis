import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsiveness/responsiveness.dart';
import '../../core/app_theme/app_theme.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {Key? key, this.onTap, required this.title, required this.image})
      : super(key: key);
  final void Function()? onTap;
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap ?? () {},
        child: Padding(
          padding: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 32.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                width: 50.w,
              ),
              SizedBox(width: 32.w),
              Text(
                title,
                style: appTheme.typography.spMedium500
                    .copyWith(color: Colors.white, fontSize: 18.w),
              )
            ],
          ),
        ),
      ),
    );
  }
}
