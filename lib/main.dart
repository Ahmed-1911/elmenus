import 'package:elmenus/views/home.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main()async {
  await GetStorage.init();
  runApp(DevicePreview(builder: (context)=> MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(411, 877),
      allowFontScaling: true,
      builder:()=> GetMaterialApp(
        title: 'Elmenus',
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

