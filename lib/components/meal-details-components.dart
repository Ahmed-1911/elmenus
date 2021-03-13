import 'package:elmenus/components/constrains.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

counterContainer(Function function){
  return Container(
    padding: EdgeInsets.all(5.sp),
    margin: EdgeInsets.symmetric(horizontal: 10.sp),
    decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
              offset: Offset(1, 1),
              color: Colors.black26,
              blurRadius: 3,
              spreadRadius: 1)
        ]),
    child: GestureDetector(
      onTap: function,
      child: Icon(
        Icons.arrow_upward,
        color: primColor,
        size: 35.sp,
      ),
    ),
  );
}

