import 'package:equatable/equatable.dart';

import 'colors.dart';
import 'radius.dart';
import 'typography.dart';

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.colors,
    required this.radius,
    required this.typography,
  });

  final AppColorsData colors;
  final AppRadiusData radius;
  final AppTypographyData typography;

  @override
  List<Object?> get props => [
        colors,
        radius,
        typography,
      ];
}
