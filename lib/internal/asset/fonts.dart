import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class Fonts {
  Fonts._();

  static final TextStyle title = GoogleFonts.montserrat(
    fontSize: 16,
    height: 1.32,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w500,
  );



  static final TextStyle labelSmall = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.32,
    letterSpacing: 0.4,
  );

  static final TextStyle labelMedium = GoogleFonts.montserrat(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.32,
    letterSpacing: 1.44,
    color: Colors.white,

  );

  static final TextStyle bodySmall = GoogleFonts.montserrat(
    height: 1.32,
    fontSize: 10,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  static final TextStyle bodyMedium = GoogleFonts.montserrat(
    height: 1.32,
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bodyLarge = GoogleFonts.montserrat(
    height: 1.32,
    fontSize: 14,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
  );


  static final TextStyle mediumBodySmallBold = GoogleFonts.montserrat(
    fontSize: 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle buttonMedium = GoogleFonts.montserrat(
    fontSize: 12,
    letterSpacing: 1.3,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle grayHintText = GoogleFonts.montserrat(
    fontSize: 16,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
    color: Colors.grey[600],
  );
}
