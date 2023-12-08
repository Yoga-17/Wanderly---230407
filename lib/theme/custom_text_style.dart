import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeJunge => theme.textTheme.bodyLarge!.junge;
  static get bodyMediumLightblue700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightBlue700,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
      );
  static get bodySmallBlack90066 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90066,
      );
  static get bodySmallJunge => theme.textTheme.bodySmall!.junge.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallJungeLightblue700 =>
      theme.textTheme.bodySmall!.junge.copyWith(
        color: appTheme.lightBlue700,
        fontSize: 10.fSize,
      );
  static get bodySmallKameronLightblue700 =>
      theme.textTheme.bodySmall!.kameron.copyWith(
        color: appTheme.lightBlue700,
        fontSize: 10.fSize,
      );
  // Headline text style
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallInterWhiteA700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get headlineSmallJunge => theme.textTheme.headlineSmall!.junge;
  // Label text style
  static get labelMediumIndigo900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.indigo900,
      );
  // Title style
  static get titleLargeInter => theme.textTheme.titleLarge!.inter;
  static get titleLargeJuliusSansOneWhiteA700 =>
      theme.textTheme.titleLarge!.juliusSansOne.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeLuxuriousRomanWhiteA700 =>
      theme.textTheme.titleLarge!.luxuriousRoman.copyWith(
        color: appTheme.whiteA700.withOpacity(0.7),
      );
}

extension on TextStyle {
  TextStyle get kameron {
    return copyWith(
      fontFamily: 'Kameron',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get mali {
    return copyWith(
      fontFamily: 'Mali',
    );
  }

  TextStyle get juliusSansOne {
    return copyWith(
      fontFamily: 'Julius Sans One',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get junge {
    return copyWith(
      fontFamily: 'Junge',
    );
  }

  TextStyle get luxuriousRoman {
    return copyWith(
      fontFamily: 'Luxurious Roman',
    );
  }
}
