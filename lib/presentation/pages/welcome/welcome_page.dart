import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:medcentrservis/core/constants/routes.dart';
import 'package:medcentrservis/presentation/widgets/action_button.dart';
import 'package:medcentrservis/presentation/widgets/section_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SectionText(title: "Welcome"),
            SizedBox(height: 25.h),
            ActionButton(
              title: "Start",
              onTap: () => Navigator.pushNamed(context, Routes.home),
            )
          ],
        ),
      ),
    );
  }
}
