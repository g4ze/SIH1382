import 'dart:ui';
import 'package:manav_s_application/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillAmberA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amberA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.h),
        ),
      );
  static ButtonStyle get fillAmberALR5 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.amberA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(
              5.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillOnPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientAmberAToPrimaryDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(-0.38, 1),
          end: Alignment(1.07, 0),
          colors: [
            appTheme.amberA100,
            theme.colorScheme.primary,
          ],
        ),
      );
  static BoxDecoration get gradientAmberAToPrimaryTL10Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(-0.38, 1),
          end: Alignment(0.77, 0),
          colors: [
            appTheme.amberA100,
            theme.colorScheme.primary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineAmberA => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        side: BorderSide(
          color: appTheme.amberA100,
          width: 4,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.h),
        ),
      );
  static ButtonStyle get outlinePrimaryTL10 => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
