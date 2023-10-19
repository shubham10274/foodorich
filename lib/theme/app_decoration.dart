import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/core/utils/size_utils.dart';
import 'package:foodorich_customer_app/theme/theme_helper.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
    color: appTheme.amber600,
  );
  static BoxDecoration get fillGray => BoxDecoration(
    color: appTheme.gray900.withOpacity(0.8),
  );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
  );
  static BoxDecoration get fillOnSecondary => BoxDecoration(
    color: theme.colorScheme.onSecondary,
  );
  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.primary,
  );

  // Gradient decorations
  static BoxDecoration get gradientOnPrimaryContainerToRed => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(0.47, -0.32),
      end: Alignment(0.5, 3.05),
      colors: [
        theme.colorScheme.onPrimaryContainer.withOpacity(0),
        appTheme.red400,
      ],
    ),
  );
  static BoxDecoration get gradientSecondaryContainerToDeepOrange =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1, -0.08),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.secondaryContainer,
            appTheme.deepOrange800,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get outlineBlack => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black90001.withOpacity(0.07),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack90001 => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black90001.withOpacity(0.1),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlack900011 => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.black90001.withOpacity(0.1),
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBlueGrayE => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    boxShadow: [
      BoxShadow(
        color: appTheme.blueGray9001e,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineGray => BoxDecoration(
    color: appTheme.gray900,
    border: Border.all(
      color: appTheme.gray50001,
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineGray50001 => BoxDecoration(
    color: appTheme.black900,
    border: Border.all(
      color: appTheme.gray50001,
      width: 1.h,
    ),
  );
  static BoxDecoration get outlineOnError => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    border: Border.all(
      color: theme.colorScheme.onError,
      width: 1.h,
    ),
  );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder40 => BorderRadius.circular(
    40.h,
  );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
    1.h,
  );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
    14.h,
  );
  static BorderRadius get roundedBorder43 => BorderRadius.circular(
    43.h,
  );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
    5.h,
  );
  static BorderRadius get roundedBorder53 => BorderRadius.circular(
    53.h,
  );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
    8.h,
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
