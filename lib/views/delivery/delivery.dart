import 'package:elmenus/components/home-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/delivery/delivery-controller.dart';
import 'package:elmenus/views/dine-out/dine-out-controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<Delivery> {

  @override
  Widget build(BuildContext context) {
    DineOutController moods = Get.put(DineOutController());
    DeliveryController deliveryController=Get.put(DeliveryController());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          // ignore: unrelated_type_equality_checks
          child: Obx(()=>moods.isLoading==true || deliveryController.isLoading==true?
            Center(child: spinKit(context))
                :
            SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                topBar(context),
                mySizeBox(context),
                promoCodeContainer(context),
                mySizeBox(context),
                middleList(context),
                mySizeBox(context),
                offersContainer(deliveryController.offers),
                mySizeBox(context),
                comeTrueContainer(deliveryController.offers),
                mySizeBox(context),
                discoverByDish(moods.dishesList),
                mySizeBox(context),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.sp),
                  child: autoText('Restaurants ( ${deliveryController.restaurantsListByDish.length} )', 1, 25.ssp, FontWeight.w700, Colors.black),
                ),
                allRestaurant(deliveryController.restaurantsListByDish)
              ]),
            )),
        ));
  }
}
