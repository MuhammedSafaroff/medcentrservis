import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import 'package:medcentrservis/presentation/dialogs/custom_dialog.dart';
import 'package:medcentrservis/presentation/widgets/home_item.dart';
import 'package:medcentrservis/presentation/widgets/section_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(CupertinoIcons.xmark),
              ),
            ),
            const SectionText(title: "Section 1 (2)"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 8.w),
                  for (var i = 0; i < 10; i++)
                    HomeItem(
                      title: "Horizontal item ${i + 1}",
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => const CustomDialog(
                            title: "Title",
                          ),
                        );
                      },
                    ),
                  SizedBox(width: 8.w),
                ],
              ),
            ),
            const SectionText(title: "Section 1 (2)"),
            for (var i = 0; i < 10; i++)
              HomeItem(
                title: "Vertical item ${i + 1}",
                isVertical: true,
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => const CustomDialog(
                      title: "Title",
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
