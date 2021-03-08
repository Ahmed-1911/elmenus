import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mySizeBox(BuildContext context){
  return SizedBox(
    height: getHeight(context) * 0.02,
  );
}

topBar(BuildContext context){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(1,1),
              color: Colors.black26,
              blurRadius: 2,
              spreadRadius: 1
          )
        ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 0.06.sh,
          padding: EdgeInsets.symmetric(vertical: 10.w),
          color: Colors.grey[200],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton.icon(onPressed: (){}, icon: Icon(Icons.motorcycle,size: 35.sp,), label:  autoText('Delivery',1,16.ssp,FontWeight.w500,Colors.black)),
              autoText('Nasr City, Cairo',1,19.ssp,FontWeight.w500,primColor),
              Icon(Icons.notifications_none,size: 30.sp,)
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(5.sp),
          height: 0.07.sh,
          child: Row(
            children: <Widget>[
              Flexible(
                flex:6 ,
                child: Container(
                  alignment: Alignment.center,
                  child: TextField(
                    cursorColor: Colors.black,
                    textAlign: TextAlign.start,
                    decoration:InputDecoration(
                      //contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                        filled: true,
                        fillColor: Colors.grey[200],
                        prefixIcon: Icon(Icons.search,size: 35.sp,),
                        hintText: 'Find a Restaurant',
                        hintStyle: TextStyle(
                            fontSize: 17.ssp
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 0.07.sh,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(5.r)
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 7.sp),
                  child: Icon(Icons.tune,color: primColor,size: 30.sp,),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

promoCodeContainer(BuildContext context){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10.sp),
    height: 0.1.sh,
    child: LayoutBuilder(
      builder: (ctx,constraints)=> Row(
        children: <Widget>[
          Container(
            width: 0.2.sw,
            color: Colors.teal,
          ),
          Container(
            width: 0.72.sw,
            padding: EdgeInsets.all(5.sp),
            alignment: Alignment.center,
            child: autoText('50EGP off on your 1st order for a \n limited time on orders above 120 EGP\n Use Code : FIRST50 ', 3 , 19.ssp, FontWeight.w600, Colors.black),
          )
        ],
      ),
    ),
  );
}

middleList(BuildContext context){
  return Container(
    height: 0.1.sh,
    child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(7.sp),
        itemBuilder: (context, index) {
          return LayoutBuilder(
            builder: (ctx,constraints)=> Container(
                width: 0.25.sw,
                height: constraints.maxHeight,
                margin: EdgeInsets.symmetric(horizontal: 5.sp),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ]
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                        alignment: Alignment.center,
                        child: Icon(Icons.payment,color: Colors.teal,size: 35.sp,)),
                    Container(
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 5.sp),
                        child: autoText('Online Payment', 1, 15.ssp , FontWeight.w500, Colors.black),
                      ),
                    ),
                  ],
                )
            ),
          );
        }),
  );
}

offersContainer(BuildContext context){
  return Container(
    height: 0.3.sh,
    margin: EdgeInsets.only(left: 10.sp),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: autoText(
              'Offers', 1, 25.ssp, FontWeight.w700, Colors.black),
        ),
        Flexible(
          flex: 4,
          child: Container(
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>
                    LayoutBuilder(
                      builder:(ctx,constraints)=> Container(
                        alignment: Alignment.bottomCenter,
                        width: 0.8.sw,
                        margin: EdgeInsets.only(right: 5.sp),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Container(
                              height: 0.13.sh,
                              margin: EdgeInsets.all(5.sp),
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r)
                              ),
                              child: autoText(' % 30EGP on orders above 130 EGP', 1, 14.ssp, FontWeight.w500, Colors.black54),
                            ),
                            Positioned(
                              left: 20.w,
                              top: -40.h,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: 80.h,
                                    width: 80.h,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.circular(10.r)
                                    ),
                                  ),
                                  autoText('Rosto', 1 , 20.ssp , FontWeight.w600, Colors.black)
                                ],
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Padding(
                                padding: EdgeInsets.all(4.0.sp),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5.sp),
                                  child: autoText(' Expires in 5 days', 1, 18.ssp, FontWeight.w500, primColor),
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10.r)
                        ),
                      ),
                    )
            ),
          ),
        )
      ],
    ),
  );
}

comeTrueContainer(BuildContext context){
  return Container(
    height: 0.33.sh,
    margin: EdgeInsets.only(left: 10.sp),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: autoText(
              'Your Cravings Come true', 1, 25.ssp, FontWeight.w700, Colors.black),
        ),
        Flexible(
          flex: 4,
          child: Container(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index)=>
                    LayoutBuilder(
                      builder:(ctx,constraints)=>
                          Stack(
                            overflow: Overflow.visible,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 0.2.sh,
                                    width: 0.8.sw,
                                    margin: EdgeInsets.only(right: 5.sp),
                                    alignment: Alignment.bottomLeft,
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(10.r)
                                    ),
                                    child: Container(
                                        width: 0.5.sw,
                                        child: autoText('The Rastafari \n 50.00 EGP - 105.00 EGP ', 2 , 17.ssp, FontWeight.w500, Colors.white)),
                                  ),
                                  Container(
                                    height: 0.05.sh,
                                    width: 0.7.sw,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 0.1.sw,
                                          margin: EdgeInsets.symmetric(horizontal: 10.sp,vertical: 1.sp),
                                          color: Colors.teal,
                                        ),
                                        Flexible(
                                          child: autoText(
                                              'Zack\'s Fried Chicken', 1, 20.ssp, FontWeight.w700, Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Container(
                                  margin:  EdgeInsets.symmetric(horizontal: 0.01.sw),
                                  padding:  EdgeInsets.all(5.sp),
                                  decoration: BoxDecoration(
                                      color: Colors.black45,
                                      borderRadius: BorderRadius.circular(10.r)
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.motorcycle, color: primColor,size: 30.sp,),
                                      autoText(' 30 Min', 1, 17.ssp, FontWeight.w500, Colors.white),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                    )
            ),
          ),
        ),
      ],
    ),
  );
}

discoverByDish(BuildContext context){
  return Container(
    height: 0.27.sh,
    margin: EdgeInsets.only(left: 10.sp),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: autoText(
              'Discovrer by dish', 1, 25.ssp, FontWeight.w700, Colors.black),
        ),
        Flexible(
          flex: 3,
          child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>
                  LayoutBuilder(
                    builder:(ctx,constraints)=>
                        Column(
                          children: <Widget>[
                            Container(
                              height: 0.15.sh,
                              margin: EdgeInsets.only(right: 5.sp),
                              width: 0.4.sw,
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: index==0?
                                  Border.all(
                                    color: primColor,
                                    width: 3,
                                  ):
                                  Border.all(
                                      style: BorderStyle.none
                                  )
                              ),
                            ),
                            Container(
                                height: 0.05.sh,
                                child: autoText('All', 1 , 19.ssp, FontWeight.w500, Colors.black))
                          ],
                        ),
                  )
          ),
        ),
      ],
    ),
  );
}

allRestaurant(BuildContext context){
  return Column(
    children: List.generate(7, (index) => Container(
      height: 0.5.sh,
      margin: EdgeInsets.all(10.sp),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
                color: Colors.black45,
                offset: Offset(2, 2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: LayoutBuilder(
        builder:(ctx,constraints) => Column(
          children: <Widget>[
            Container(
              height: 0.32.sh,
              color: Colors.red,
            ),
            Container(
              height: 0.12.sh,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 0.2.sw,
                    margin: EdgeInsets.all(5.sp),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.r),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    width: 0.7.sw,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            autoText('McDonald\'s', 1, 23.ssp, FontWeight.w700, Colors.black),
                            autoText('Fast Food', 1, 18.ssp, FontWeight.w500, Colors.black)
                          ],
                        ),
                        Column(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 0.05.sh,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.motorcycle,size: 35.sp,),
                      SizedBox(width: 10.w),
                      autoText('40 mins', 1, 18.ssp, FontWeight.w500, Colors.black)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.radio_button_checked,color: Colors.green,size: 35.sp,),
                      SizedBox(width: 10.w),
                      autoText('ORDER ONLINE', 1, 18.ssp, FontWeight.w500, Colors.green)
                    ],
                  ),
                  Row(),
                ],
              ),
            )
          ],
        ),
      ),
    )),
  );
}