import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/logIn&signUp-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/auth/auth-controller.dart';
import 'package:elmenus/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignUpAndLogIN extends StatefulWidget {
  SignUpAndLogIN(this.status);
  final
  bool status;
  @override
  _SignUpAndLogINState createState() => _SignUpAndLogINState();
}

class _SignUpAndLogINState extends State<SignUpAndLogIN> {
  bool isLogIn ;
  double height = 0.0;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  AuthController auth = Get.put(AuthController());
  GetStorage userData=GetStorage();
  submit() async {
    try {
      if (isLogIn) {
        await auth.logIn(email.text, password.text);
        Get.off(Home());
        userData.write('user', email.text);
        userData.write('isLogIn', true);
        mySnackBar('login'.tr, 'sucLog'.tr);
      } else {
        await auth.signUp(email.text, password.text);
        Get.off(Home());
        userData.write('user', email.text);
        userData.write('isLogIn', true);
        mySnackBar('signUp'.tr, 'sucAccount'.tr);
      }
    } catch (e) {
      Get.defaultDialog(
          title: 'err'.tr,
          radius: 15.r,
          middleText: e,
          onCancel: () {},
          textCancel: 'ok'.tr);
    }
  }

  @override
  void initState() {
    super.initState();
    isLogIn=widget.status;
    widget.status==false?height=0.06.sh:height=0.0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: 1.sh,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Positioned(
                  top: 0,
                  child: Container(
                    height: 0.4.sh,
                    width: 1.sw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://www.jeddahcafe.com/wp-content/uploads/2020/10/mcdonaldsksa_121512419_2796687527234857_1889540659751617527_n.jpg'),
                            fit: BoxFit.fill,
                            colorFilter: ColorFilter.mode(
                                Colors.black54, BlendMode.srcOver))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.r),
                          child: Image(
                            image: NetworkImage(
                                'https://pbs.twimg.com/profile_images/455357127964360704/s6HEliHC.png'),
                            width: 100.h,
                            height: 100.h,
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        autoText('Discover & Order the food you love', 1,
                            20.ssp, FontWeight.w700, Colors.white)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 0.6.sh,
                  padding: EdgeInsets.symmetric(vertical: 7.h),
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            setState(() {
                              isLogIn = true;
                              height = 0.0.sh;
                            });
                          },
                          child: autoText('login'.tr, 1, 20.ssp, FontWeight.w700,
                              isLogIn ? primColor : Colors.black)),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLogIn = false;
                            height = 0.06.sh;
                          });
                        },
                        child: autoText('signUp'.tr, 1, 20.ssp, FontWeight.w700,
                            isLogIn ? Colors.black : primColor),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r))),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  height: 0.55.sh,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      logInMethodContainer(
                          Colors.blue[900], 'face'.tr),
                      logInMethodContainer(
                          Colors.red[800], 'google'.tr),
                      Container(
                        height: 0.35.sh,
                        padding: EdgeInsets.symmetric(horizontal: 15.sp),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(2, 2),
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            myTextField(Icons.person_pin, 'name'.tr,
                                height, name),
                            myTextField(Icons.person_pin, 'mail'.tr,
                                0.06.sh, email),
                            myTextField(Icons.lock, 'pass'.tr,
                                0.06.sh, password),
                            autoText('fPass'.tr, 1, 18.ssp,
                                FontWeight.w700, Colors.black54),
                            GestureDetector(
                              onTap: () {
                                submit();
                              },
                              child: Container(
                                  height: 0.06.sh,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: primColor,
                                  ),
                                  child: autoText(
                                      isLogIn ? 'login'.tr : 'create'.tr,
                                      1,
                                      20.ssp,
                                      FontWeight.w700,
                                      Colors.white)),
                            ),
                          ],
                        ),
                      ),
                      autoText('guest'.tr, 1, 20.ssp,
                          FontWeight.w700, primColor)
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
