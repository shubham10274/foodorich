
import 'package:foodorich_customer_app/core/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:foodorich_customer_app/theme/theme_helper.dart';
import 'app_decoration.dart';

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.blueGray90001,
  );
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.errorContainer,
    fontSize: 18.fSize,
  );
  static get bodyLargeErrorContainer_1 => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.errorContainer,
  );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray800,
    fontSize: 18.fSize,
  );
  static get bodyLargeGray80002 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray80002,
    fontSize: 18.fSize,
  );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray900.withOpacity(0.53),
  );
  static get bodyLargeGray900_1 => theme.textTheme.bodyLarge!.copyWith(
    color: appTheme.gray900.withOpacity(0.64),
  );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.onErrorContainer,
  );
  static get bodyLargeOnPrimary => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.onPrimary,
    fontSize: 18.fSize,
  );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
    color: theme.colorScheme.onPrimaryContainer,
    fontSize: 18.fSize,
  );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins;
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.black90001,
    fontSize: 13.fSize,
  );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.blueGray900,
  );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
    color: theme.colorScheme.errorContainer,
  );
  static get bodyMediumGray5001 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray5001,
  );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray600,
  );
  static get bodyMediumGray60015 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray600,
    fontSize: 15.fSize,
  );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray800,
  );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray80001,
  );
  static get bodyMediumGray80013 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray800,
    fontSize: 13.fSize,
  );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray900.withOpacity(0.53),
  );
  static get bodyMediumGray90013 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray900.withOpacity(0.64),
    fontSize: 13.fSize,
  );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
    color: appTheme.gray900.withOpacity(0.64),
  );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
    fontSize: 10.fSize,
  );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
    fontSize: 12.fSize,
  );
  static get bodySmall12_1 => theme.textTheme.bodySmall!.copyWith(
    fontSize: 12.fSize,
  );
  static get bodySmallGray5001 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray5001,
    fontSize: 12.fSize,
  );
  static get bodySmallGray500112 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray5001,
    fontSize: 12.fSize,
  );
  static get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray600,
    fontSize: 12.fSize,
  );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900.withOpacity(0.64),
  );
  static get bodySmallGray90010 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900.withOpacity(0.64),
    fontSize: 10.fSize,
  );
  static get bodySmallGray90010_1 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900,
    fontSize: 10.fSize,
  );
  static get bodySmallGray90011 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900.withOpacity(0.64),
    fontSize: 11.fSize,
  );
  static get bodySmallGray90011_1 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900,
    fontSize: 11.fSize,
  );
  static get bodySmallGray9008 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900,
    fontSize: 8.fSize,
  );
  static get bodySmallGray900_1 => theme.textTheme.bodySmall!.copyWith(
    color: appTheme.gray900,
  );
  static get bodySmallPorterSansBlockGray900 =>
      theme.textTheme.bodySmall!.porterSansBlock.copyWith(
        color: appTheme.gray900,
        fontSize: 8.fSize,
      );
  static get bodySmallPorterSansBlockOnPrimaryContainer =>
      theme.textTheme.bodySmall!.porterSansBlock.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 8.fSize,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.primaryContainer,
    fontSize: 12.fSize,
  );
  // Headline style
  static get headlineLargeInter => theme.textTheme.headlineLarge!.inter;
  static get headlineMediumGray900 => theme.textTheme.headlineMedium!.copyWith(
    color: appTheme.gray900,
    fontSize: 28.fSize,
    fontWeight: FontWeight.w700,
  );
  static get headlineMediumGray900Bold =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumPrimary => theme.textTheme.headlineMedium!.copyWith(
    color: theme.colorScheme.primary,
    fontSize: 28.fSize,
    fontWeight: FontWeight.w700,
  );
  static get headlineSmallGray5002 => theme.textTheme.headlineSmall!.copyWith(
    color: appTheme.gray5002,
  );
  static get headlineSmallOnPrimaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
    color: theme.colorScheme.primary,
  );
  // Label text style
  static get labelLargeBluegray600 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.blueGray600,
  );
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.blueGray900,
  );
  static get labelLargeGray5001 => theme.textTheme.labelLarge!.copyWith(
    color: appTheme.gray5001,
    fontSize: 13.fSize,
  );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w600,
  );
  static get labelMediumMontserratBlack90001 =>
      theme.textTheme.labelMedium!.montserrat.copyWith(
        color: appTheme.black90001,
      );
  // Montserrat text style
  static get montserratBlack90001 => TextStyle(
    color: appTheme.black90001.withOpacity(0.3),
    fontSize: 6.fSize,
    fontWeight: FontWeight.w500,
  ).montserrat;
  // Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.black90001,
    fontWeight: FontWeight.w400,
  );
  static get titleLargeBlack90001Medium => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.black90001,
    fontSize: 22.fSize,
    fontWeight: FontWeight.w500,
  );
  static get titleLargeGray5001 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.gray5001,
    fontWeight: FontWeight.w500,
  );
  static get titleLargeGray900 => theme.textTheme.titleLarge!.copyWith(
    color: appTheme.gray900,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.black90001,
    fontSize: 16.fSize,
    fontWeight: FontWeight.w700,
  );
  static get titleMediumBlack90001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.errorContainer,
    fontSize: 16.fSize,
  );
  static get titleMediumGray100 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray100,
  );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray5001,
    fontSize: 16.fSize,
  );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray800,
    fontSize: 17.fSize,
    fontWeight: FontWeight.w700,
  );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
    color: appTheme.gray90001,
  );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.onPrimary,
    fontSize: 16.fSize,
  );
  static get titleMediumOnPrimary16 => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.onPrimary,
    fontSize: 16.fSize,
  );
  static get titleMediumOpenSansBlack90001 =>
      theme.textTheme.titleMedium!.openSans.copyWith(
        color: appTheme.black90001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w600,
  );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
    fontSize: 17.fSize,
    fontWeight: FontWeight.w600,
  );
  static get titleSmallBluegray600 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.blueGray600,
    fontSize: 15.fSize,
  );
  static get titleSmallBluegray900 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.blueGray900,
    fontWeight: FontWeight.w800,
  );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.errorContainer,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallGray5001 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray5001,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallGray5001Medium => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray5001,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallGray800 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray800,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray80001,
    fontSize: 15.fSize,
  );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
    color: appTheme.gray900,
  );
  static get titleSmallMontserratBlack90001 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black90001,
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.onPrimary,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimaryMedium => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.onPrimary,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallPoppinsBluegray600 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray600,
      );
  static get titleSmallPoppinsBluegray900 =>
      theme.textTheme.titleSmall!.poppins.copyWith(
        color: appTheme.blueGray900,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get porterSansBlock {
    return copyWith(
      fontFamily: 'Porter Sans Block',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}
