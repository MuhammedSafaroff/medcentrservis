import 'package:flutter/material.dart';
import 'package:medcentrservis/core/constants/slider_image.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../../core/app_theme/app_theme.dart';

class SubCategoryPage extends StatelessWidget {
  const SubCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 40.h,
            left: 16.w,
            right: 16.w),
        decoration: BoxDecoration(
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
        ),
        child: Column(
          children: [
            Row(
              children: [
                Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(45.w),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(45.w),
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 45.w,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color:
                                appTheme.colors.shadowColor.withOpacity(0.15),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          size: 28,
                          color: appTheme.colors.secondarySolid,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                FittedBox(
                  child: Text(
                    "Диагностика в урологии",
                    style: appTheme.typography.spBold700.copyWith(
                      fontSize: 23.w,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: [
                  for (var i = 0; i < subList.length; i++)
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 24.w, top: 10.h, bottom: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  subList[i],
                                  style: appTheme.typography.spBold700.copyWith(
                                    fontSize: 16.w,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
