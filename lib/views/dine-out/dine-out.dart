import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/dine-out-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/dine-out/dine-out-controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DineOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MoodsController moods = Get.put(MoodsController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Obx(()=>moods.isLoading.value?CircularProgressIndicator():moodSection(moods.moodsList)),
            discoverRest(context,'Discover Nasr City,Cairo'),
            discoverTopDish(context),
            discoverRest(context,'Hidden Game'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 10.w),
                  child: autoText('New', 1,  25.ssp , FontWeight.w700, Colors.black),
                ),
                Container(
                  height: 0.14.sh,
                  margin: EdgeInsets.only(bottom: getHeight(context)*0.03),
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return LayoutBuilder(
                          builder: (ctx,constraints)=>
                              Container(
                                  width: 0.27.sw,
                                  margin: EdgeInsets.only(left: 10.w),
                                  child:Column(
                                    children: <Widget>[
                                         Container(
                                            height: 0.1.sh,
                                            color: Colors.greenAccent,
                                        ),
                                      Container(
                                        height: 0.04.sh,
                                        alignment: Alignment.center,
                                        child: autoText('Abo Ammar',2, 20.ssp , FontWeight.w500, Colors.black),
                                      )
                                    ],
                                  )
                              ),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
