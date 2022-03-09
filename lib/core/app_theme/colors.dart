import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.mainSolid,
    required this.secondarySolid,
    required this.reddish1,
    required this.reddish2,
    required this.blue1,
    required this.blue2,
    required this.blue3,
    required this.disable,
    required this.bodyTextColor,
    required this.cardGradient1,
    required this.shadowColor,
  });

  final Color mainSolid;
  final Color secondarySolid;
  final Color reddish1;
  final Color reddish2;
  final Color blue1;
  final Color blue2;
  final Color blue3;
  final Color disable;
  final Color bodyTextColor;
  final Color cardGradient1;
  final Color shadowColor;

  factory AppColorsData.light() => const AppColorsData(
        mainSolid: Color(0xFF33A6D8),
        secondarySolid: Color(0xFFFF6A66),
        reddish1: Color(0xFFFF949F),
        reddish2: Color(0xFFFF554B),
        blue1: Color(0xFF1792CD),
        blue2: Color(0xFF69C9EA),
        blue3: Color(0xFFDBF4FF),
        disable: Color(0xFFDBE4E6),
        bodyTextColor: Color(0xFFB4B3B3),
        cardGradient1: Color(0xFF35799A),
        shadowColor: Color(0xFF6C6D6D),
      );

  @override
  List<Object?> get props => [
        mainSolid.named('mainSolid'),
        secondarySolid.named('secondarySolid'),
        reddish1.named('reddish1'),
        reddish2.named('reddish2'),
        blue1.named('blue1'),
        blue2.named('blue2'),
        blue3.named('blue3'),
        disable.named('disable'),
        bodyTextColor.named('bodyTextColor'),
        cardGradient1.named('cardGradient1'),
        shadowColor.named('shadowColor'),
      ];
}
