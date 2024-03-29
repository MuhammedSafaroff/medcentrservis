import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medcentrservis/presentation/cubit/navigation/navigation_cubit.dart';
import 'package:medcentrservis/presentation/pages/main/main_page.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:medcentrservis/presentation/routers/app_router.dart';

import '../core/app_theme/app_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init(constraints, orientation);

            return AppTheme(
              data: AppThemeData(
                colors: AppColorsData.light(),
                radius: AppRadiusData.regular(),
                typography: AppTypographyData.regular(),
              ),
              child: MaterialApp(
                title: 'Garanti',
                debugShowCheckedModeBanner: false,
                onGenerateRoute: AppRouter.onGenerateRoute,
                theme: ThemeData(
                  primaryColor: const Color(0xFFDB00FF),
                ),
                home: Banner(
                  location: BannerLocation.topStart,
                  message: 'dev',
                  color: Colors.cyan,
                  child: BlocProvider(
                    create: (context) => NavigationCubit(),
                    child: MainPage(),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
