import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodySmallLatoBluegray900 =>
      theme.textTheme.bodySmall!.lato.copyWith(
        color: appTheme.blueGray900,
      );
  // Headline text style
  static get headlineSmallGray100 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray100,
      );
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Title text style
  static get titleLargeGray600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumBluegray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
