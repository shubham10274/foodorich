import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/core/utils/size_utils.dart';
import 'package:foodorich_customer_app/theme/theme_helper.dart';

import 'app_decoration.dart';

class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
    backgroundColor: appTheme.blue800,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.h),
    ),
  );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
    backgroundColor: appTheme.gray900,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(23.h),
    ),
  );
  static ButtonStyle get fillOnErrorContainer => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(0.44),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28.h),
    ),
  );
  static ButtonStyle get fillOnErrorContainerTL24 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(0.44),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.h),
    ),
  );
  static ButtonStyle get fillOnPrimaryContainer => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.onPrimaryContainer,
  );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28.h),
    ),
  );
  static ButtonStyle get fillPrimaryTL16 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.h),
    ),
  );
  static ButtonStyle get fillPrimaryTL24 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24.h),
    ),
  );
  static ButtonStyle get fillPrimaryTL4 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.h),
    ),
  );
  static ButtonStyle get fillPrimary1 => ElevatedButton.styleFrom(
    backgroundColor: theme.colorScheme.primary,
  );

  // Outline button style
  static ButtonStyle get outlineBlueGrayE => ElevatedButton.styleFrom(
    backgroundColor: appTheme.whiteA70001,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.h),
    ),
    shadowColor: appTheme.blueGray9001e,
    elevation: 0,
  );
  // text button style
  static ButtonStyle get none => ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
    elevation: MaterialStateProperty.all<double>(0),
  );
}