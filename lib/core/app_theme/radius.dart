import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveness/responsiveness.dart';

import 'named.dart';

class AppRadiusData extends Equatable {
  const AppRadiusData({
    required this.medium,
    required this.large,
  });

  /// 16.0 px
  final Radius medium;

  /// 100.0 px
  final Radius large;

  factory AppRadiusData.regular() => AppRadiusData(
        medium: Radius.circular(5.radius),
        large: Radius.circular(30.radius),
      );

  @override
  List<Object?> get props => [
        medium.named('medium'),
        large.named('large'),
      ];
}
