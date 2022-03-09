import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveness/responsiveness.dart';

import 'named.dart';

class AppRadiusData extends Equatable {
  const AppRadiusData({
    required this.small,
    required this.medium,
    required this.large,
  });

  /// 5.0 px
  final Radius small;

  /// 10.0 px
  final Radius medium;

  /// 15.0 px
  final Radius large;

  factory AppRadiusData.regular() => AppRadiusData(
        small: Radius.circular(1.3.radius),
        medium: Radius.circular(3.2.radius),
        large: Radius.circular(4.8.radius),
      );

  @override
  List<Object?> get props => [
        small.named('small'),
        medium.named('medium'),
        large.named('large'),
      ];
}
