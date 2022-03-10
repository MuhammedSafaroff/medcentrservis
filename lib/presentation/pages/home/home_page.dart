import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness/responsiveness.dart';
import '../../../core/app_theme/app_theme.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/slider_image.dart';
import '../home/widgets/home_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final maxWidth = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 30.h)),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: appTheme.colors.shadowColor.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: "Напечатайте, что ищете...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    appTheme.radius.small,
                  ),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 30.h)),
        SliverToBoxAdapter(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 188.h,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: imageList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: maxWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(appTheme.radius.large),
                      image: DecorationImage(
                        image: NetworkImage(i),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 30.h)),
        SliverToBoxAdapter(
          child: Text(
            "Наши сервисы",
            style: appTheme.typography.spMedium500.copyWith(
              fontSize: 23.w,
              color: appTheme.colors.mainSolid,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 20.h)),
        SliverGrid.count(
          crossAxisCount: 3,
          childAspectRatio: 4 / 3.2,
          mainAxisSpacing: 18.h,
          crossAxisSpacing: 10.w,
          children: categoryImageTitle.map((index) {
            return HomeItem(
              image: index["image"]!,
              title: index["title"]!,
            );
          }).toList(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 50.h)),
        SliverToBoxAdapter(
          child: Text(
            "Наша статистика",
            style: appTheme.typography.spMedium500.copyWith(
              fontSize: 23.w,
              color: appTheme.colors.mainSolid,
            ),
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 30.h)),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.images.menuCount1,
                  ),
                  SizedBox(width: 45.w),
                  Flexible(
                    child: Text(
                      "Пациентов доверяют нам свое здоровье",
                      style: appTheme.typography.spRegular400.copyWith(
                        fontSize: 18.w,
                        color: appTheme.colors.bodyTextColor,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    Assets.images.menuCount2,
                  ),
                  SizedBox(width: 45.w),
                  Flexible(
                    child: Text(
                      "Клиник по всей Москве работающих с 1995 года",
                      style: appTheme.typography.spRegular400.copyWith(
                        fontSize: 18.w,
                        color: appTheme.colors.bodyTextColor,
                      ),
                    ),
                  )
                ].reversed.toList(),
              ),
              Row(
                children: [
                  Image.asset(
                    Assets.images.menuCount3,
                  ),
                  SizedBox(width: 45.w),
                  Flexible(
                    child: Text(
                      "Квалифицированных врачей и специалистов",
                      style: appTheme.typography.spRegular400.copyWith(
                        fontSize: 18.w,
                        color: appTheme.colors.bodyTextColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
            ],
          ),
        )
      ],
    );
  }
}
