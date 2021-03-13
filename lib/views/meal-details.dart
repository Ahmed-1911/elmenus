import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/meal-details-components.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/model/basket-items.dart';
import 'package:elmenus/model/menu-model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class MealDetails extends StatefulWidget {
  MenuElement element;
  String mealImage;
  MealDetails({this.element,this.mealImage});

  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  bool isLogIn = GetStorage().read('isLogIn');
  int _counter = 1;
  int selected=0;
  void incremateCounter() {
    setState(() {
      _counter++;
    });
  }

  List<String> size=['sandwich','small','medium','large'];
  void decrmentCounter() {
    if (_counter > 1) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 0,
          child: Container(
            height: 0.08.sh,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 0.4.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      counterContainer(()=>incremateCounter()),
                      autoText('${_counter}', 1, 23.ssp, FontWeight.w700, Colors.black),
                      counterContainer(()=>decrmentCounter()),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    if(isLogIn == true){
                      basketItems.add(BasketItem(widget.element.name,_counter,(_counter*widget.element.price).toDouble()));
                      Get.back();
                      mySnackBar('Congratulation', 'The meal has been added successfully');
                      print(basketItems.length);
                    }
                    else{
                      Get.defaultDialog(
                          title: 'Error',
                          radius: 15.r,
                          middleText: 'You should log in first',
                          onCancel: () {},
                          textCancel: 'ok');
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.sp),
                    margin: EdgeInsets.symmetric(horizontal: 10.sp),
                    decoration: BoxDecoration(
                        color: isLogIn == true
                            ? primColor
                            : Colors.orangeAccent[200],
                        borderRadius: BorderRadius.circular(40.r),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.black26,
                              blurRadius: 3,
                              spreadRadius: 1)
                        ]),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        autoText('Add To Basket', 1, 22.ssp, FontWeight.w700,
                            Colors.white),
                        isLogIn == true
                            ? SizedBox()
                            : Icon(
                                Icons.lock,
                                size: 30.sp,
                              )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 0.2.sh,
              decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                  image: NetworkImage(widget.mealImage),
                  fit: BoxFit.fill),
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.sp),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(10.sp),
                      margin: EdgeInsets.symmetric(horizontal: 10.sp),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35.r),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 1),
                                color: Colors.black26,
                                blurRadius: 3,
                                spreadRadius: 1)
                          ]),
                      child: Icon(
                        Icons.share,
                        color: primColor,
                        size: 35.sp,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 7.sp),
              height: 0.18.sh,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 5.sp),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        autoText(widget.element.name, 1, 22.ssp, FontWeight.w700,
                            Colors.black),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.sp),
                            decoration: BoxDecoration(
                              color: primColor,
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: autoText(
                              '${widget.element.price * _counter} EGP',
                              1,
                              21.ssp,
                              FontWeight.w500,
                              Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: autoText(
                      widget.element.description,
                      3,
                      17.ssp,
                      FontWeight.w500,
                      Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Container(
                height: 0.16.sh,
                color: Colors.grey[200],
                child: Column(
                    children: List.generate(
                        4,
                        (index) => Container(
                            height: 0.04.sh,
                            margin: EdgeInsets.symmetric(horizontal: 10.sp),
                            width: getHeight(context),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          selected=index;
                                        });
                                      },
                                      child: Icon(index == selected
                                          ? Icons.radio_button_checked
                                          : Icons.radio_button_unchecked,size: 30.sp,color: index == selected?Colors.green:Colors.black,),
                                    ),
                                    SizedBox(width: 5.w,),
                                    autoText(size[index], 1, 18.ssp,
                                        FontWeight.w500, Colors.black),
                                  ],
                                ),
                                autoText('${(widget.element.price*index)+widget.element.price} EGP', 1, 19.ssp,
                                    FontWeight.w700, Colors.black),
                              ],
                            ))))),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 0.04.sh,
                    color: Colors.grey[100],
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 15.sp),
                    child: autoText(' Special instructions', 1, 22.ssp,
                        FontWeight.w700, Colors.black),
                  ),
                  TextField(
                    maxLines: 1,
                    cursorColor: primColor,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'ex : don not add onion',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
