import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveness/responsiveness.dart';

import 'named.dart';

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.sp24w700,
    required this.sp14w700,
    required this.sp14w400,
  });

  final TextStyle sp24w700;
  final TextStyle sp14w700;
  final TextStyle sp14w400;

  factory AppTypographyData.regular() => AppTypographyData(
        sp24w700: TextStyle(
          fontSize: 24.w,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        sp14w700: TextStyle(
          fontSize: 14.w,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
        ),
        sp14w400: TextStyle(
          fontSize: 14.w,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
      );

  @override
  List<Object?> get props => [
        sp24w700.named('sp24w700'),
        sp14w700.named('sp14w700'),
        sp14w400.named('sp14w400'),
      ];
}
