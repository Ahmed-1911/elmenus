import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';

class MealDetails extends StatefulWidget {
  String meal;
  String mealDetails;
  double price;
  MealDetails({this.meal, this.mealDetails, this.price});

  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  bool isLogIn = GetStorage().read('isLogIn');
  int _counter = 1;
  void _incremateCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrmentCounter() {
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
            height: 0.1.sh,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  width: 0.4.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5.sp),
                        margin: EdgeInsets.symmetric(horizontal: 10.sp),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.black26,
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ]),
                        child: GestureDetector(
                          onTap: () => _incremateCounter(),
                          child: Icon(
                            Icons.arrow_upward,
                            color: primColor,
                            size: 35.sp,
                          ),
                        ),
                      ),
                      autoText('${_counter}', 1, 23.ssp, FontWeight.w700,
                          Colors.black),
                      Container(
                        padding: EdgeInsets.all(5.sp),
                        margin: EdgeInsets.symmetric(horizontal: 10.sp),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30.r),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(1, 1),
                                  color: Colors.black26,
                                  blurRadius: 3,
                                  spreadRadius: 1)
                            ]),
                        child: GestureDetector(
                          onTap: () => _decrmentCounter(),
                          child: Icon(
                            Icons.arrow_downward,
                            color: primColor,
                            size: 35.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
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
                    child: Row(
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 0.sh,
                color: Colors.greenAccent,
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
                margin: EdgeInsets.symmetric(vertical: 10.sp),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: 10.sp, vertical: 5.sp),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          autoText(widget.meal, 1, 23.ssp, FontWeight.w700,
                              Colors.black),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.sp),
                              decoration: BoxDecoration(
                                color: primColor,
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: autoText(
                                '${widget.price * _counter} EGP',
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
                        widget.mealDetails,
                        4,
                        18.ssp,
                        FontWeight.w500,
                        Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 0.2.sh,
                  color: Colors.grey[200],
                  child: Column(
                      children: List.generate(
                          4,
                          (index) => Container(
                              height: 0.05.sh,
                              margin: EdgeInsets.symmetric(horizontal: 10.sp),
                              width: getHeight(context),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(index == 1
                                          ? Icons.radio_button_checked
                                          : Icons.radio_button_unchecked),
                                      autoText(' small', 1, 18.ssp,
                                          FontWeight.w500, Colors.black),
                                    ],
                                  ),
                                  autoText('120.99 EGP', 1, 19.ssp,
                                      FontWeight.w700, Colors.black),
                                ],
                              ))))),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 0.07.sh,
                      color: Colors.grey[100],
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.symmetric(vertical: 15.sp),
                      child: autoText(' Special instructions', 1, 22.ssp,
                          FontWeight.w700, Colors.black),
                    ),
                    TextField(
                      maxLines: 4,
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
      ),
    );
  }
}
