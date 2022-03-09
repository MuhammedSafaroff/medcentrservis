import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:medcentrservis/presentation/widgets/action_button.dart';

import '../../core/app_theme/app_theme.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key, this.isPrimary = false, required this.title})
      : super(key: key);
  final bool isPrimary;
  final String title;

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    final appTheme = AppTheme.of(context);
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
      child: AlertDialog(
        contentPadding: const EdgeInsets.all(0),
        insetPadding: EdgeInsets.all(16.w),
        backgroundColor: Colors.transparent,
        content: Container(
          width: maxWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.transparent),
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 25.w),
                      Text(
                        title,
                        style: appTheme.typography.sp24w700,
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(CupertinoIcons.xmark),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nDuis convallis justo non nisi placerat maximus.",
                    style: appTheme.typography.sp14w400,
                  ),
                ),
                Container(
                  height: maxHeight > 650 ? 400 : 320,
                  color: appTheme.colors.gray,
                  child: Scrollbar(
                    thickness: 5,
                    radius: const Radius.circular(2.5),
                    isAlwaysShown: Platform.isIOS,
                    child: ListView(
                      children: [
                        SizedBox(height: 8.h),
                        for (var i = 0; i < 10; i++)
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.h, horizontal: 16.w),
                            child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus. Praesent tincidunt ut dui fermentum aliquam. Donec nec sodales mi. Proin ultrices dignissim ullamcorper. Nam eu consectetur nunc. Vivamus facilisis fermentum varius. Integer rutrum, ligula ac tempus maximus, erat justo molestie mauris, tempor porta tellus elit egestas ante. Proin ac leo quis felis posuere dapibus id et felis. Aenean id mattis nulla. Sed at nibh et tortor tempor malesuada. Quisque egestas urna tellus, in tristique risus ultricies laoreet. Donec fringilla, est non dapibus tempor, nulla metus lacinia arcu, at mattis ex dui nec massa. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras consequat id purus consectetur malesuada.",
                              style: appTheme.typography.sp14w400,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                ActionButton(
                  title: "TEST BUTTON",
                  onTap: () => Navigator.pop(context),
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
