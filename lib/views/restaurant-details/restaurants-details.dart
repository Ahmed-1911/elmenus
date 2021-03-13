import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/model/restaurants-model.dart';
import 'package:elmenus/views/meal-details.dart';
import 'package:elmenus/views/restaurant-details/restaurant-controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RestaurantDetailsPage extends StatelessWidget {
  RestaurantDetailsPage(this.restaurantElement);
  RestaurantElement restaurantElement;
  @override
  Widget build(BuildContext context) {
    RestaurantController restaurantController = Get.put(RestaurantController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Obx(
            () => restaurantController.isLoading.value == true
                ? Center(child: spinKit(context))
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //top section
                      Container(
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
                                    Container(
                                      height: 70.h,
                                      width: 70.h,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(7.sp),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
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
                                        Icons.update,
                                        size: 35.ssp,
                                      ),
                                    ),
                                    Container(
                                      height: 70.h,
                                      width: 70.h,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(7.sp),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
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
                                        Icons.update,
                                        size: 35.ssp,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              height: 50.h,
                              width: 1.sw,
                              color: Colors.black12,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    height: 40.h,
                                    width: 40.h,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5.sp, horizontal: 10.sp),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
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
                                      Icons.arrow_back,
                                      size: 35.ssp,
                                    ),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        height: 40.h,
                                        width: 40.h,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 5.sp, horizontal: 10.sp),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
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
                                          Icons.update,
                                          size: 35.ssp,
                                        ),
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.h,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 5.sp, horizontal: 10.sp),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
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
                                          Icons.update,
                                          size: 35.ssp,
                                        ),
                                      ),
                                      Container(
                                        height: 40.h,
                                        width: 40.h,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 5.sp, horizontal: 10.sp),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
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
                                          Icons.update,
                                          size: 35.ssp,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                      //location
                      Container(
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
                              ])),
                      //meals
                      autoText('all Meals ', 1, 25.ssp, FontWeight.w700,
                          Colors.black54),
                      Column(
                        children: List.generate(
                            restaurantController.menu.length,
                            (index) => GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (builder) {
                                          return new Container(
                                            height: 450.0,
                                            color: Color(0xFF737373),
                                            child: new Container(
                                                decoration: new BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: new BorderRadius
                                                            .only(
                                                        topLeft: const Radius
                                                            .circular(10.0),
                                                        topRight: const Radius
                                                            .circular(10.0))),
                                                child: new MealDetails(
                                                  meal: restaurantController
                                                      .menu[index].name,
                                                  price: restaurantController
                                                      .menu[index].price
                                                      .toDouble(),
                                                  mealDetails:
                                                      restaurantController
                                                          .menu[index]
                                                          .description,
                                                )),
                                          );
                                        });
                                  },
                                  child: Container(
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
                                          padding: EdgeInsets.only(left: 2.sp),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  autoText(
                                                      restaurantController
                                                          .menu[index].name,
                                                      1,
                                                      18.ssp,
                                                      FontWeight.w800,
                                                      Colors.black),
                                                  autoText(
                                                      '${restaurantController.menu[index].price} EGP',
                                                      1,
                                                      16.ssp,
                                                      FontWeight.w700,
                                                      primColor),
                                                ],
                                              ),
                                              autoText(
                                                  restaurantController
                                                      .menu[index].description,
                                                  3,
                                                  17.ssp,
                                                  FontWeight.w700,
                                                  Colors.black54),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.purple,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      restaurantElement
                                                          .mealImage),
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
                                  ),
                                )),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  // void onMealTap() {
  //   var context;
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (context) {
  //         return Column(children: [MealDetails()]);
  //       });
  // }

}
