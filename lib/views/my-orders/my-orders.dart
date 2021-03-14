import 'dart:math';

import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/home.dart';
import 'package:elmenus/views/my-orders/orders-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyOrders extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    OrdersController ordersController = Get.put(OrdersController());
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => ordersController.isLoading.value?
          spinKit(context):
          ordersController.orders.length==0?
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height:0.02.sh),
                Container(
                  width: 0.25.sw,
                  height: 0.18.sh,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://cdn.dribbble.com/users/1168645/screenshots/3152485/no-orders_2x.png?compress=1&resize=400x300'),
                        fit: BoxFit.fill),
                  ),
                ),
                autoText('missOut'.tr , 3 , 23.ssp, FontWeight.w700, Colors.black),
                autoText('discover'.tr , 2 , 18.ssp, FontWeight.w500, Colors.grey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    autoText('dto'.tr , 1 , 17.ssp, FontWeight.w500, Colors.black),
                    autoText('loc'.tr , 1 , 17.ssp, FontWeight.w700, primColor),
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
                    child:autoText('discNow'.tr , 1 , 20.ssp, FontWeight.w500, Colors.white),
                  ),
                ),
              ],
            ),
          ):
          ListView.builder(
              itemCount: ordersController.orders.length,
              itemBuilder: (context, index) => Container(
                height: 0.15.sh,
                margin: EdgeInsets.all(5.sp),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          blurRadius: 3)
                    ]),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 0.15.sh,
                      width: 0.7.sw,
                      padding: EdgeInsets.only(left: 5.sp),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: <Widget>[
                          autoText(
                              ordersController.orders[index].restaurant,
                              1,
                              25.ssp,
                              FontWeight.w800,
                              Colors.black),
                          autoText(
                              '${ordersController.orders[index].totalPrice} EGP',
                              1,
                              20.ssp,
                              FontWeight.w700,
                              primColor),
                          autoText(
                              '${Random().nextInt(15)}/3/2021',
                              1,
                              22.ssp,
                              FontWeight.w700,
                              Colors.black54),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: primColor,
                          image: DecorationImage(
                              image: NetworkImage('https://menu22.com/images/119093274_1972293829579836_7732205989622824270_o.jpg'),
                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 3)
                          ]),
                      height: 0.15.sh,
                      width: 0.25.sw,
                    )
                  ],
                ),
              ))
        ),
      ),
    );
  }
}
