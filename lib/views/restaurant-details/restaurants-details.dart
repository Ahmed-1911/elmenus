import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/restaurant-details-components.dart';
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
                      topSection(restaurantElement),
                      //location
                      locationContainer(),
                      //meals
                      autoText('all Meals ', 1, 25.ssp, FontWeight.w700,
                          Colors.black54),
                      Column(
                        children: List.generate(
                            restaurantController.menu.length,
                            (index) => GestureDetector(
                                  onTap: () {
                                    Get.bottomSheet(
                                        Container(
                                          height: 0.8.sh,
                                          color: Color(0xFF737373),
                                          child: Container(
                                              decoration: new BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      new BorderRadius.only(
                                                          topLeft: const Radius
                                                              .circular(10.0),
                                                          topRight: const Radius
                                                              .circular(10.0))),
                                              child: MealDetails(
                                                element: restaurantController
                                                    .menu[index],
                                                mealImage:
                                                    restaurantElement.mealImage,
                                              )),
                                        ),
                                        enableDrag: true,
                                        isScrollControlled: true,
                                        enterBottomSheetDuration: Duration(milliseconds: 3000),
                                        barrierColor: Colors.black54,
                                    );
//                                    showModalBottomSheet(
//                                        context: context,
//                                        builder: (builder) {
//                                          return  Container(
//                                            height:0.9.sh,
//                                          color: Color(0xFF737373),
//                                          child:  Container(
//                                                decoration: new BoxDecoration(
//                                                    color: Colors.white,
//                                                    borderRadius: new BorderRadius
//                                                            .only(
//                                                        topLeft: const Radius
//                                                            .circular(10.0),
//                                                        topRight: const Radius
//                                                            .circular(10.0))),
//                                                child:  MealDetails(
//                                                  element: restaurantController.menu[index],
//                                                  mealImage: restaurantElement.mealImage ,
//                                                )),
//                                          );
//                                        });
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
