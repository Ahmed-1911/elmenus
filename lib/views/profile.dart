import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/utils/lang-controller.dart';
import 'package:elmenus/views/auth/login&signup.dart';
import 'package:elmenus/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Profile extends StatelessWidget {
  bool isLogIn = GetStorage().read('isLogIn');
  String user = GetStorage().read('user');
  LanguageController lang=Get.put(LanguageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primColor,
        title: Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            GestureDetector(
              onTap: ()async{
                Get.updateLocale(Locale('en'));
               await lang.changeLang('en');
              },
              child: Row(
                children: <Widget>[
                  Icon(lang.lang.value=='en'?Icons.radio_button_checked:Icons.radio_button_unchecked,size: 30.sp),
                  SizedBox(width: 10.w,),
                  autoText('English', 1, 24.ssp, FontWeight.w700, Colors.white)
                ],
              ),
            ),
            GestureDetector(
              onTap: ()async{
                Get.updateLocale(Locale('ar'));
                await lang.changeLang('ar');
              },
              child: Row(
                children: <Widget>[
                 Icon(lang.lang.value=='ar'?Icons.radio_button_checked:Icons.radio_button_unchecked,size: 30.sp),
                  SizedBox(width: 10.w,),
                  autoText('عربي', 1, 24.ssp, FontWeight.w700, Colors.white)
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: isLogIn == true
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    autoText(
                        'Welcome'.tr, 1, 25.ssp, FontWeight.w600, Colors.black),
                    autoText(user, 1, 25.ssp, FontWeight.w600, primColor),
                    Container(
                      height: 0.08.sh,
                      margin: EdgeInsets.symmetric(horizontal: 50.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              GetStorage().write('isLogIn', false);
                              Get.off(Home());
                            },
                            child: Container(
                              padding: EdgeInsets.all(10.sp),
                              margin: EdgeInsets.symmetric(horizontal: 10.sp),
                              decoration: BoxDecoration(
                                  color: primColor,
                                  borderRadius: BorderRadius.circular(40.r),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(1, 1),
                                        color: Colors.black26,
                                        blurRadius: 3,
                                        spreadRadius: 1)
                                  ]),
                              child: autoText('Log Out', 1, 22.ssp, FontWeight.w700,
                                  Colors.white),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 0.01.sh),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.h),
                      width: 0.25.sw,
                      height: 0.18.sh,
                      decoration: BoxDecoration(
                          color: primColor,
                          image: DecorationImage(
                              image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/160/719/non_2x/free-unique-join-us-vectors.jpg'),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 3)
                          ]),
                    ),
                    autoText('join'.tr, 1, 23.ssp, FontWeight.w700,
                        Colors.black),
                    autoText(
                        'resala'.tr,
                        2,
                        18.ssp,
                        FontWeight.w500,
                        Colors.grey),
                    GestureDetector(
                      onTap: () {
                        Get.to(SignUpAndLogIN(false));
                      },
                      child: Container(
                        width: 1.sw,
                        height: 0.07.sh,
                        margin: EdgeInsets.all(10.w),
                        color: primColor,
                        alignment: Alignment.center,
                        child: autoText('create'.tr, 1, 20.ssp,
                            FontWeight.w500, Colors.white),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(SignUpAndLogIN(true));
                        },
                        child: autoText('haveAccount'.tr, 1, 20.ssp,
                            FontWeight.w500, Colors.grey))
                  ],
                ),
              ),
      ),
    );
  }
}
