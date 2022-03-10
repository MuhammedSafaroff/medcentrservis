import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medcentrservis/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:medcentrservis/presentation/widgets/drawer_item.dart';

import '../../core/app_theme/app_theme.dart';
import '../../core/constants/assets.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    return Drawer(
      child: Container(
        width: double.maxFinite,
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
          boxShadow: [
            BoxShadow(
              color: appTheme.colors.shadowColor.withOpacity(0.15),
              spreadRadius: 0,
              blurRadius: 5,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              Image.asset(
                Assets.images.drawerTop,
                // width: double.maxFinite,
              ),
              DrawerItem(
                title: "Главная",
                image: Assets.images.homeDrawer,
                onTap: () {
                  context.read<NavigationCubit>().change(0);
                  Navigator.pop(context);
                },
              ),
              DrawerItem(
                title: "Наши услуги",
                image: Assets.images.serviceDrawer,
                onTap: () {
                  context.read<NavigationCubit>().change(1);
                  Navigator.pop(context);
                },
              ),
              DrawerItem(
                  title: "Наши Врачи", image: Assets.images.doctorDrawer),
              DrawerItem(title: "О компании", image: Assets.images.aboutDrawer),
              DrawerItem(
                  title: "Акции и скидки", image: Assets.images.campaignDrawer),
              DrawerItem(
                title: "Адреса клиники",
                image: Assets.images.locationDrawer,
                onTap: () {
                  context.read<NavigationCubit>().change(2);
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 22),
            ],
          ),
        ),
      ),
    );
  }
}
