import 'package:elmenus/components/constrains.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AutoSizeText autoText(String text, int maxLine, double fontSize,
    FontWeight fontWeight, Color color) {
  return AutoSizeText(text,
      maxLines: maxLine,
      softWrap: true,
      overflow: TextOverflow.visible,
      textAlign: TextAlign.center,
      style: GoogleFonts.elMessiri(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ));
}

 mySnackBar(String head,String message) {
   return Get.snackbar(head, message,
       forwardAnimationCurve: Curves.bounceInOut,
       animationDuration: Duration(seconds: 2),
       isDismissible: true,
       snackPosition: SnackPosition.TOP,
       colorText: Colors.black
   );
 }


SpinKitWave spinKit(BuildContext context) {
  return SpinKitWave(
    color: primColor,
    size: 50.0.sp,
  );
}