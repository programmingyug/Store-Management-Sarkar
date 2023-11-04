import 'package:flutter/material.dart';
import 'package:programming_s_application1/core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get background => BoxDecoration(
        color: appTheme.gray10001,
      );

  // Fill decorations
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );

  // Outline decorations
  static BoxDecoration get outlineAmber => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.amber300,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineAmber300 => BoxDecoration(
        color: theme.colorScheme.onError,
        border: Border.all(
          color: appTheme.amber300,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              4,
              4,
            ),
          ),
        ],
      );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: appTheme.teal30001,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
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
  // Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
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
