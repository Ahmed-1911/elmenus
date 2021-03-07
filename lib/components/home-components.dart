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
              FlatButton.icon(onPressed: (){}, icon: Icon(Icons.motorcycle), label: Text('Delivery')),
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
                child: TextField(
                  cursorColor: Colors.black,
                  decoration:InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
                      filled: true,
                      fillColor: Colors.grey[200],
                      prefixIcon: Icon(Icons.search,size: 30.sp,),
                      hintText: 'Find a Restaurant',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none
                  ),
                ),
              ),
              Flexible(
                child: Container(
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
            width: 0.75.sw,
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
    height: getHeight(context) * 0.3,
    margin: EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: autoText(
              'Offers', 1, 21, FontWeight.w700, Colors.black),
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
                        width: getWidth(context)*0.8,
                        margin: EdgeInsets.only(right: 5),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            Container(
                              height: constraints.maxHeight*0.5,
                              margin: EdgeInsets.all(5),
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: autoText(' % 30EGP on orders above 130 EGP', 1, 14, FontWeight.w500, Colors.black54),
                            ),
                            Positioned(
                              left: 20,
                              top: -constraints.maxHeight*0.2,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    height: constraints.maxHeight*0.4,
                                    width: constraints.maxHeight*0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                  autoText('Rosto', 1 , 18 , FontWeight.w600, Colors.black)
                                ],
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: autoText(' Expires in 5 days', 1, 15, FontWeight.w500, primColor),
                                ),
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10)
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
    height: getHeight(context) * 0.3,
    margin: EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: autoText(
              'Your Cravings Come true', 1, 21, FontWeight.w700, Colors.black),
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
                                    height: constraints.maxHeight*0.8,
                                    width: getWidth(context)*0.8,
                                    margin: EdgeInsets.only(right: 5),
                                    alignment: Alignment.bottomLeft,
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Container(
                                        width: (getWidth(context)*0.8)/2,
                                        child: autoText('The Rastafari \n 50.00 EGP - 105.00 EGP ', 2 , 17, FontWeight.w500, Colors.white)),
                                  ),
                                  Container(
                                    height: constraints.maxHeight*0.2,
                                    width: getWidth(context)*0.7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: constraints.maxHeight*0.22,
                                          margin: EdgeInsets.symmetric(horizontal: 10),
                                          color: Colors.teal,
                                        ),
                                        Flexible(
                                          child: autoText(
                                              'Zack\'s Fried Chicken', 1, 19, FontWeight.w700, Colors.black),
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
                                  margin:  EdgeInsets.symmetric(horizontal: getWidth(context)*0.01),
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.black45,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.motorcycle, color: primColor,),
                                      autoText(' 30 Min', 1, 15, FontWeight.w500, Colors.white),
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
    height: getHeight(context) * 0.2,
    margin: EdgeInsets.only(left: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(
          child: autoText(
              'Discovrer by dish', 1, 21, FontWeight.w700, Colors.black),
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
                              height: constraints.maxHeight*0.8,
                              margin: EdgeInsets.only(right: 5),
                              width: getWidth(context)*0.4,
                              alignment: Alignment.bottomLeft,
                              decoration: BoxDecoration(
                                  color: Colors.black26,
                                  borderRadius: BorderRadius.circular(10),
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
                                height: constraints.maxHeight*0.2,
                                child: autoText('All', 1 , 17, FontWeight.w500, Colors.black))
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
      height: getHeight(context) * 0.4,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
              height: constraints.maxHeight*0.67,
              color: Colors.red,
            ),
            Container(
              height: constraints.maxHeight*0.21,
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Container(
                    width: constraints.maxWidth*0.2,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.red,
                    ),
                  ),
                  Container(
                    width: constraints.maxWidth*0.75,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            autoText('McDonald\'s', 1, 19, FontWeight.w700, Colors.black),
                            autoText('Fast Food', 1, 15, FontWeight.w500, Colors.black)
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
              height: constraints.maxHeight*0.12,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.motorcycle),
                      SizedBox(width: 10,),
                      autoText('40 mins', 1, 15, FontWeight.w500, Colors.black)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.radio_button_checked,color: Colors.green,),
                      SizedBox(width: 10,),
                      autoText('ORDER ONLINE', 1, 15, FontWeight.w500, Colors.green)
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