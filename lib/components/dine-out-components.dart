import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

moodContainer(BuildContext context,String title,String image){
  return Container(
    margin: EdgeInsets.all(2.w),
    padding: EdgeInsets.symmetric(horizontal: 3.w),
    width: 0.49.sw,
    height: 0.15.sh,
    alignment: Alignment.bottomLeft,
    child: autoText(title, 1, 22.ssp, FontWeight.w800, Colors.white),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.srcOver)
        )
    ),
  );
}

moodSection(BuildContext context){
  return Container(
    height: 0.4.sh,
    child: LayoutBuilder(
      builder:(ctx,constraints)=> Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 0.08.sh,
            margin: EdgeInsets.only(left: 10.w),
            alignment: Alignment.centerLeft,
            child: autoText('Discover by moods', 1, 25.ssp, FontWeight.w700, Colors.black),
          ),
          Container(
            height: 0.32.sh,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    moodContainer(context, 'CHEAP EATS', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80'),
                    moodContainer(context, 'COFFEESHOPS', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80')
                  ],
                ),
                Column(
                  children: <Widget>[
                    moodContainer(context, 'CASUAL DINNING', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80'),
                    moodContainer(context, 'WORK OR STUDY', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80')
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

discoverRest(BuildContext context ,String title){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: autoText(title, 1,  25.ssp , FontWeight.w700, Colors.black),
      ),
      Container(
        height: 0.25.sh,
        margin: EdgeInsets.only(bottom: 10.h),
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return LayoutBuilder(
                builder: (ctx,constraints)=>
                    Container(
                        width: 0.4.sw,
                        margin: EdgeInsets.only(left: 10.w),
                        color: Colors.white,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            LayoutBuilder(
                              builder:(ctx2,constraints2)=> Container(
                                  alignment: Alignment.bottomLeft,
                                  height: 0.15.sh,
                                  color: Colors.greenAccent,
                                  padding: EdgeInsets.only(left: 10.w,bottom: 10.h,top:60.h),
                                  child: Container(
                                    width: 50.w,
                                    color: Colors.red,
                                  )
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 0.05.sh,
                              child: autoText('McDonald\'s', 1,  19.ssp , FontWeight.w500, Colors.black),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              height: 0.05.sh,
                              child: autoText('*****', 1, 20.ssp , FontWeight.w900, Colors.amber),
                            ),
                          ],
                        )
                    ),
              );
            }),
      ),
    ],
  );
}

discoverTopDish(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: autoText('Discover Top Dish', 1,  25.ssp , FontWeight.w700, Colors.black),
      ),
      Container(
        height: 0.12.sh,
        margin: EdgeInsets.only(bottom: 30.h),
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return LayoutBuilder(
                builder: (ctx,constraints)=>
                    Container(
                        width: 0.27.sw,
                        margin: EdgeInsets.only(left: 10.w),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            LayoutBuilder(
                              builder:(ctx2,constraints2)=> Container(
                                  alignment: Alignment.bottomLeft,
                                  height: constraints.maxHeight,
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  color: Colors.greenAccent,
                                  child: Container(
                                    child: autoText('Koshari', 1, 20.ssp , FontWeight.w700, Colors.white),
                                  )
                              ),
                            ),
                          ],
                        )
                    ),
              );
            }),
      ),
    ],
  );
}

