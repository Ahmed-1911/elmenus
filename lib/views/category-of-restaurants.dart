import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/home-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/views/delivery/delivery-controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryOfRestaurantsPage extends StatelessWidget {
  CategoryOfRestaurantsPage(this.condition);
  String condition;
  DeliveryController restaurantsController = Get.find<DeliveryController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primColor,
          title: autoText(condition, 1, 22.ssp, FontWeight.w700, Colors.white),
          centerTitle: true,
        ),
        body: SingleChildScrollView(child: Obx(() {
          restaurantsController.fetchListOfRestaurantByMood(condition);
          return restaurantsController.isLoading.value == true
              ? spinKit(context)
              : allRestaurant(restaurantsController.restaurantsListByMood);
        })));
  }
}
