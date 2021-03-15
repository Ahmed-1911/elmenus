import 'package:elmenus/components/dine-out-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/delivery/delivery-controller.dart';
import 'package:elmenus/views/dine-out/dine-out-controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DineOut extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    DineOutController mood = Get.find<DineOutController>();
    DeliveryController deliveryController = Get.find<DeliveryController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:Obx(()=>mood.isLoading.value?Center(child: spinKit(context)):ListView(
          children: <Widget>[
            moodSection(mood.moodsList),
            discoverRest(deliveryController.restaurantsList,'loc'.tr),
            discoverTopDish(mood.dishesList),
            discoverRest(deliveryController.restaurantsListByMood ,'hidden'.tr),
            newRestaurants(deliveryController.restaurantsList)
          ],
        )),
      ),
    );
  }
}
