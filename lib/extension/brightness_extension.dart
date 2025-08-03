import 'dart:ui';

extension BrightnessExtension on Brightness {
  bool get isDarkMode => this == Brightness.dark;
}
