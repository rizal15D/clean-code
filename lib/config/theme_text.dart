import 'package:flutter/material.dart';

import '../../utils/extension.dart';

enum ThemeText {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
  labelLarge,
  labelMedium,
  labelSmall,
}

extension ThemeTextExtension on ThemeText {
  TextStyle get textStyle {
    switch (this) {
      // Display
      case ThemeText.displayLarge:
        return TextStyle(fontSize: 32.0.sp, fontWeight: FontWeight.bold);
      case ThemeText.displayMedium:
        return TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.bold);
      case ThemeText.displaySmall:
        return TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.bold);

      // Headline
      case ThemeText.headlineLarge:
        return TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.bold);
      case ThemeText.headlineMedium:
        return TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.bold);
      case ThemeText.headlineSmall:
        return TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.bold);

      // Title
      case ThemeText.titleLarge:
        return TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w600);
      case ThemeText.titleMedium:
        return TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.w600);
      case ThemeText.titleSmall:
        return TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w600);

      // Body
      case ThemeText.bodyLarge:
        return TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.normal);
      case ThemeText.bodyMedium:
        return TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.normal);
      case ThemeText.bodySmall:
        return TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.normal);

      // Label
      case ThemeText.labelLarge:
        return TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w500);
      case ThemeText.labelMedium:
        return TextStyle(fontSize: 13.0.sp, fontWeight: FontWeight.w500);
      case ThemeText.labelSmall:
        return TextStyle(fontSize: 11.0.sp, fontWeight: FontWeight.w500);
    }
  }
}
