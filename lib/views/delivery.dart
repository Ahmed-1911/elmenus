import 'package:elmenus/components/home-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dine-out/dine-out-controller.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<Delivery> {
  DineOutController moods = Get.put(DineOutController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          // ignore: unrelated_type_equality_checks
          child: Obx(()=>moods.isLoading==true?Center(child: spinKit(context)):SingleChildScrollView(
            child: Column(children: <Widget>[
              topBar(context),
              mySizeBox(context),
              promoCodeContainer(context),
              mySizeBox(context),
              middleList(context),
              mySizeBox(context),
              offersContainer(context),
              mySizeBox(context),
              comeTrueContainer(context),
              mySizeBox(context),
              discoverByDish(moods.dishesList),
              mySizeBox(context),
              allRestaurant(context)
            ]),
          )),
        ));
  }
}
