import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFonts{
  static final TextStyle StartScreenFontsSize = TextStyle(
    fontSize: 25,  // Set font size
    fontWeight: FontWeight.bold,  // Make text bold
    color: Colors.pinkAccent,  // Text color
  );

  static final TextStyle questionFontStyle = GoogleFonts.lato(
      fontSize: 18,
      color: Colors.pinkAccent
  );
  static final TextStyle resultFontStyle = GoogleFonts.lato(
      fontSize: 18,
      color: Colors.pinkAccent
  );
}