import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/model/restaurants-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

iconContainer(double height,Color color,IconData icon) {
  return Container(
    height: height,
    width: height,
    alignment: Alignment.center,
    margin: EdgeInsets.symmetric(vertical: 5.sp, horizontal: 10.sp),
    decoration: BoxDecoration(
        color: color,
        borderRadius:
        BorderRadius.circular(50.r),
        boxShadow: [
          BoxShadow(
              color: Colors.black26,
              offset: Offset(1, 1),
              spreadRadius: 1,
              blurRadius: 3)
        ]),
    child: Icon(
      icon,
      size: 30.ssp,
      color: Colors.white,
    ),
  );
}

topSection(RestaurantElement restaurantElement){
    return Container(
      height: 0.4.sh,
      child: Stack(alignment: Alignment.center, children: <
          Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 0.2.sh,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                  image: DecorationImage(
                      image: NetworkImage(
                          restaurantElement.mealImage),
                      fit: BoxFit.fill),
                )),
            Container(
              height: 0.14.sh,
              margin: EdgeInsets.symmetric(horizontal: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      autoText(
                          restaurantElement.id,
                          1,
                          25.ssp,
                          FontWeight.w700,
                          Colors.black),
                      autoText(
                          restaurantElement.location,
                          1,
                          20.ssp,
                          FontWeight.w700,
                          Colors.black),
                    ],
                  ),
                  autoText('*****', 1, 20.ssp,
                      FontWeight.w700, Colors.amber),
                  autoText(
                      '${restaurantElement.dish} , fast food',
                      1,
                      18.ssp,
                      FontWeight.w700,
                      Colors.black54),
                ],
              ),
            )
          ],
        ),
        Container(
          height: 100.h,
          width: 1.sw,
          //color: Colors.pink,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  height: 100.h,
                  width: 100.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                      vertical: 5.sp, horizontal: 10.sp),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                      BorderRadius.circular(10.r),
                      image: DecorationImage(
                          image: NetworkImage(
                              restaurantElement.image),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(1, 1),
                            spreadRadius: 1,
                            blurRadius: 3)
                      ])),
              Row(
                children: <Widget>[
                  iconContainer(70.h, primColor, Icons.call),
                  iconContainer(70.h, primColor, Icons.group),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: Container(
            height: 55.h,
            width: 1.sw,
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: <Widget>[
                iconContainer(40.h, Colors.black26, Icons.arrow_back),
                Row(
                  children: <Widget>[
                    iconContainer(45.h, Colors.black26, Icons.map),
                    iconContainer(45.h, Colors.black26, Icons.share),
                    iconContainer(45.h, Colors.black26, Icons.favorite_border),
                  ],
                )
              ],
            ),
          ),
        )
      ]),
    );
}

locationContainer(){
  return Container(
      height: 0.2.sh,
      width: 1.sw,
      margin: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          image: DecorationImage(
              image: NetworkImage(
                  'https://previews.123rf.com/images/arrow/arrow1508/arrow150800003/43651576-restaurant-and-cafe-bar-map-pointer-location-destination-on-map.jpg')),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(1, 1),
                spreadRadius: 1,
                blurRadius: 3)
          ]));
}