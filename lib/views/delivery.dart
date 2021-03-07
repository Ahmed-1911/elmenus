import 'package:elmenus/components/home-components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
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
              discoverByDish(context),
              mySizeBox(context),
              allRestaurant(context)
            ]),
          ),
        ));
  }
}
