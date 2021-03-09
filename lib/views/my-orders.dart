import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height:0.01.sh),
              Container(
                width: 0.25.sw,
                height: 0.18.sh,
                color: primColor,
              ),
              autoText('You\'re missing out \n You haven\'t place any orders yet' , 3 , 23.ssp, FontWeight.w700, Colors.black),
              autoText('Discover the best dishes around you and place your first order now' , 2 , 18.ssp, FontWeight.w500, Colors.grey),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  autoText('Restaurants delivering to  ' , 1 , 20.ssp, FontWeight.w500, Colors.black),
                  autoText('Nasr City , Cairo' , 1 , 20.ssp, FontWeight.w500, primColor),
                ],
              ),
              GestureDetector(
                onTap: (){
                  Get.to(Home());
                },
                child: Container(
                  width: 1.sw,
                  height: 0.07.sh,
                  margin: EdgeInsets.all(10.w),
                  color: primColor,
                  alignment: Alignment.center,
                  child:autoText('I WANT TO DISCOVER AND ORDER NOW' , 1 , 20.ssp, FontWeight.w500, Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
