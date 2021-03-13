import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/model/basket-items.dart';
import 'package:elmenus/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class CheckOut extends StatelessWidget {
  bool isLogIn = GetStorage().read('isLogIn');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: !isLogIn?
      SizedBox():
      BottomAppBar(
          color: Colors.white,
          elevation: 0,
          child: Container(
            height: 0.08.sh,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                GestureDetector(
                  onTap: ()async{
                    //  await addOrder();
                      basketItems=[];
                      Get.off(Home());
                      mySnackBar('Congratulation', 'Your order has been executed successfully');
                   // }
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
                    child: autoText('Confirm order', 1, 22.ssp, FontWeight.w700,
                        Colors.white),
                  ),
                )
              ],
            ),
          )),
      body: SafeArea(
          child: isLogIn?basketItems.length == 0
              ? Center(
                  child: autoText('No Items Added Yet', 1, 25.ssp,
                      FontWeight.w600, Colors.black),
                )
              : ListView.builder(
              itemCount: basketItems.length,
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
                              basketItems[index].name,
                              1,
                              25.ssp,
                              FontWeight.w800,
                              Colors.black),
                          autoText(
                              '${basketItems[index].total} EGP',
                              1,
                              20.ssp,
                              FontWeight.w700,
                              primColor),
                          autoText(
                              basketItems[index].count.toString(),
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
          :Padding(
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
                autoText('You\'re missing out \n You haven\'t place any orders yet' , 3 , 23.ssp, FontWeight.w700, Colors.black),
                autoText('Discover the best dishes around you and place your first order now' , 2 , 18.ssp, FontWeight.w500, Colors.grey),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    autoText('Restaurants delivering to  ' , 1 , 17.ssp, FontWeight.w500, Colors.black),
                    autoText('Nasr City , Cairo' , 1 , 17.ssp, FontWeight.w700, primColor),
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
          )),
    );
  }
}
