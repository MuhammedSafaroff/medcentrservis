import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import 'named.dart';

class AppColorsData extends Equatable {
  const AppColorsData({
    required this.blue,
    required this.blueGreen,
    required this.blueDark,
    required this.red,
    required this.gray,
  });

  final Color blue;
  final Color blueGreen;
  final Color blueDark;
  final Color red;
  final Color gray;

  factory AppColorsData.light() => const AppColorsData(
        blue: Color(0xFF70CAF7),
        blueGreen: Color(0xFF9DE0F0),
        blueDark: Color(0xFF6EACD6),
        red: Color(0xFF6EACD6),
        gray: Color(0xFFD4D4D4),
      );

  @override
  List<Object?> get props => [
        blue.named('blue'),
        blueGreen.named('blueGreen'),
        blueDark.named('blueDark'),
        red.named('red'),
        gray.named('gray'),
      ];
}
