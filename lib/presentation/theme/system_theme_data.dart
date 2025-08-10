// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter_module_boilerplate/presentation/theme/color_theme.dart';
import 'package:flutter_module_boilerplate/presentation/theme/text_theme.dart';

class SystemThemeData {
  final Brightness brightness;
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  SystemThemeData({
    required this.brightness,
    required this.colorScheme,
    required this.textTheme,
  });

  factory SystemThemeData.light() => SystemThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(),
    textTheme: TextTheme.create(
      color: ColorScheme.light().text, // Default text color for light theme
    ),
  );

  factory SystemThemeData.dark() => SystemThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(),
    textTheme: TextTheme.create(
      color: ColorScheme.dark().text, // Default text color for dark theme
    ),
  );
}
