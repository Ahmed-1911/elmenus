import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AutoSizeText autoText(String text, int maxLine, double fontSize,FontWeight fontWeight, Color color  ) {
  return AutoSizeText(
      text,
      maxLines: maxLine,
      softWrap: true,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
      style: GoogleFonts.elMessiri(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      )
  );
}