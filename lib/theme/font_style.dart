
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tribpix/components/common_size/nk_general_size.dart';

import 'color/colors.dart';

/// [NkGetXFontStyle] USE CUSTOM FONT

class NkGetXFontStyle {
  static TextTheme get textLightTheme =>
      GoogleFonts.poppinsTextTheme().copyWith(
          labelMedium: GoogleFonts.poppins().copyWith(
        color: primaryTextColor,
        fontSize: 14,
        fontWeight: NkGeneralSize.nkGeneralFontWeight(),
      ));

  /// OLDER FONT STYLE
/* static TextTheme get textLightTheme => GoogleFonts.dmSansTextTheme().copyWith(
          labelMedium: TextStyle(
        color: primaryTextColor,
        fontSize: NkFontSize.regularFont(),
        fontWeight: NkGeneralSize.nkGeneralFontWeight(),
      ));*/

/*static TextTheme get textLightTheme => ThemeData().textTheme.apply(
        fontFamily: GoogleFonts.dmSans(

                color: primaryTextColor, fontSize: NkFontSize.regularFont())
            .fontFamily,
      );*/
}
