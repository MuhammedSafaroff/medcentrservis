import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveness/responsiveness.dart';

import 'named.dart';

class AppTypographyData extends Equatable {
  const AppTypographyData({
    required this.spRegular400,
    required this.spMedium500,
    required this.spSemiBold600,
    required this.spBold700,
  });

  final TextStyle spRegular400;
  final TextStyle spMedium500;
  final TextStyle spSemiBold600;
  final TextStyle spBold700;

  factory AppTypographyData.regular() => const AppTypographyData(
        spRegular400: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: 'Montserrat',
          fontStyle: FontStyle.normal,
        ),
        spMedium500: TextStyle(
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
          fontStyle: FontStyle.normal,
        ),
        spSemiBold600: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: 'Montserrat',
          fontStyle: FontStyle.normal,
        ),
        spBold700: TextStyle(
          fontWeight: FontWeight.w700,
          fontFamily: 'Montserrat',
          fontStyle: FontStyle.normal,
        ),
      );

  @override
  List<Object?> get props => [
        spRegular400.named('spRegular400'),
        spMedium500.named('spMedium500'),
        spSemiBold600.named('spSemiBold600'),
        spBold700.named('spBold700'),
      ];
}
