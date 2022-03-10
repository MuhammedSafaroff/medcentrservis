import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsiveness/responsiveness.dart';

import '../../core/app_theme/app_theme.dart';
import '../../core/constants/assets.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    Key? key,
    required this.gKey,
    this.isBack = false,
    this.isWhite = true,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> gKey;
  final bool isBack;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final mediaQueryData = MediaQuery.of(context);

    return Container(
      height: 102.h + mediaQueryData.viewPadding.top,
      color: Colors.white,
      child: Material(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
            top: mediaQueryData.viewPadding.top,
          ),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(45.w),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(45.w),
                      onTap: isBack
                          ? () {
                              Navigator.pop(context);
                            }
                          : () {
                              gKey.currentState!.openDrawer();
                            },
                      child: Container(
                        height: 45.w,
                        width: 45.w,
                        padding: EdgeInsets.only(bottom: 12.w, top: 12.w),
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
                        child: isBack
                            ? Icon(
                                Icons.arrow_back,
                                size: 28,
                                color: appTheme.colors.secondarySolid,
                              )
                            : SvgPicture.asset(
                                Assets.images.menuBurger,
                                width: 20.w,
                              ),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset(
                  Assets.images.logo,
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(45.w),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(45.w),
                      onTap: () {},
                      child: Container(
                        height: 45.w,
                        width: 45.w,
                        padding: EdgeInsets.only(bottom: 7.w, top: 13.w),
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
                        child: SvgPicture.asset(
                          Assets.images.telIcon,
                          width: 17.w,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(45.w),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(45.w),
                      onTap: () {},
                      child: Container(
                        height: 45.w,
                        width: 45.w,
                        padding: EdgeInsets.only(bottom: 10.w, top: 10.w),
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
                        child: SvgPicture.asset(
                          Assets.images.notificationIcon,
                          width: 17.w,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(102.h);
}
