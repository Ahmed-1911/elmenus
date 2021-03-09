import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/auth/login&signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:0.01.sh),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                width: 0.25.sw,
                height: 0.18.sh,
                color: primColor,
              ),
              autoText('Join our community' , 1 , 23.ssp, FontWeight.w700, Colors.black),
              autoText('Sign-up to get most out of elmmenus. Share your experience, follow favorite restaurants and more'  , 2 , 18.ssp, FontWeight.w500, Colors.grey),
              GestureDetector(
                onTap: (){
                  Get.to(SignUpAndLogIN(false));
                },
                child: Container(
                  width: 1.sw,
                  height: 0.07.sh,
                  margin: EdgeInsets.all(10.w),
                  color: primColor,
                  alignment: Alignment.center,
                  child:autoText('CREATE ACCOUNT' , 1 , 20.ssp, FontWeight.w500, Colors.white),
                ),
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(SignUpAndLogIN(true));
                  },
                  child: autoText('ALREADY HAVE AN ACCOUNT' , 1 , 20.ssp, FontWeight.w500, Colors.grey))
            ],
          ),
        ),
      ),
    );
  }
}
