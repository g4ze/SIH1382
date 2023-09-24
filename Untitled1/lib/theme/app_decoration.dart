import 'package:flutter/material.dart';
import 'package:manav_s_application/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmberA => BoxDecoration(
        color: appTheme.amberA100,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Gradient decorations
  static BoxDecoration get gradientRed400ToSecondaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.64, 0.14),
          end: Alignment(-0.11, 2.11),
          colors: [
            appTheme.red400,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.64, 0.14),
          end: Alignment(-0.11, 2.11),
          colors: [
            appTheme.red500,
            appTheme.red900,
          ],
        ),
      );
  static BoxDecoration get gradientRedToSecondaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.64, 0.14),
          end: Alignment(-0.11, 2.11),
          colors: [
            appTheme.red300,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder127 => BorderRadius.circular(
        127.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL10 => BorderRadius.vertical(
        bottom: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder104 => BorderRadius.circular(
        104.h,
      );
  static BorderRadius get roundedBorder112 => BorderRadius.circular(
        112.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
