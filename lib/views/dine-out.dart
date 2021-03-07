import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/dine-out-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DineOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            moodSection(context),
            discoverRest(context,'Discover Nasr City,Cairo'),
            discoverTopDish(context),
            discoverRest(context,'Hidden Game'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: autoText('New', 1,  21 , FontWeight.w500, Colors.black),
                ),
                Container(
                  height: getHeight(context) * 0.13,
                  margin: EdgeInsets.only(bottom: getHeight(context)*0.03),
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return LayoutBuilder(
                          builder: (ctx,constraints)=>
                              Container(
                                  width: getWidth(context) * 0.27,
                                  margin: EdgeInsets.only(left: 10),
                                  child:Column(
                                    children: <Widget>[
                                         Container(
                                            height: constraints.maxHeight *0.6,
                                            color: Colors.greenAccent,
                                        ),
                                      Container(
                                        height: constraints.maxHeight *0.4,
                                        alignment: Alignment.center,
                                        child: autoText('Abo Ammar',2, 20 , FontWeight.w500, Colors.black),
                                      )
                                    ],
                                  )
                              ),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
