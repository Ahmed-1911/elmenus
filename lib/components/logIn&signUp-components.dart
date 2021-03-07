import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

 myBorder(double height)=>OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: height==0?BorderSide.none:BorderSide(
        color: Colors.grey,
        width: 1.5
    )
);

logInMethodContainer(Color color,String title){
  return Container(
    height: 0.06.sh,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.r),
      color: color,
    ),
   child:autoText(title, 1 , 20.ssp, FontWeight.w700, Colors.white)
  );
}

myTextField(IconData icon,String hint,double height){
  return  AnimatedContainer(
    duration: Duration(milliseconds: 1500),
    curve: Curves.bounceInOut,
    height: height,
    child: TextFormField(
      cursorColor: primColor,
      obscureText: true,
      decoration:height==0.0.sh?InputDecoration(): InputDecoration(
        disabledBorder: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 5.sp),
          hintText: hint,
          prefixIcon: Icon(icon,color: primColor,size: 30.sp,),
          border: myBorder(height),
          focusedBorder: myBorder(height),
          enabledBorder: myBorder(height)
      ),
    ),
  );
}