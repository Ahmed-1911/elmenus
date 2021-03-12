import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:elmenus/model/dishe-model.dart';
import 'package:elmenus/model/mood-model.dart';
import 'package:elmenus/model/restaurants-model.dart';
import 'package:elmenus/views/category-of-restaurants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

moodContainer(String title,String image){
  return GestureDetector(
    onTap: (){
      Get.to(CategoryOfRestaurantsPage(title));
    },
    child: Container(
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
    ),
  );
}

moodSection(List<MoodElement> moodList){
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
                    moodContainer( moodList[0].mood, moodList[0].moodImage),
                    moodContainer( moodList[1].mood, moodList[1].moodImage),
                  ],
                ),
                Column(
                  children: <Widget>[
                    moodContainer( moodList[2].mood, moodList[2].moodImage),
                    moodContainer( moodList[3].mood, moodList[3].moodImage),
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

discoverRest(List<RestaurantElement> restaurants , String title){
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
            itemCount: restaurants.length,
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
                                  decoration: BoxDecoration(
                                      color: primColor,
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                          image: NetworkImage(restaurants[index].mealImage),
                                          fit: BoxFit.fill
                                      )
                                  ),
                                  padding: EdgeInsets.only(left: 10.w,bottom: 10.h,top:65.h),
                                  child: Container(
                                    width: 50.w,
                                    decoration: BoxDecoration(
                                        color: primColor,
                                        borderRadius: BorderRadius.circular(10.r),
                                        image: DecorationImage(
                                            image: NetworkImage(restaurants[index].image),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                  )
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              height: 0.05.sh,
                              child: autoText(restaurants[index].id, 1, 18.ssp , FontWeight.w800, Colors.black),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: 0.05.sh,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  autoText(restaurants[index].dish, 2,  17.ssp , FontWeight.w500, Colors.black),
                                  autoText('*****', 1, 20.ssp , FontWeight.w900, Colors.amber),
                                ],
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

discoverTopDish(List<DishElement> dishes){
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
            itemCount: dishes.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return LayoutBuilder(
                builder: (ctx,constraints)=>
                    Container(
                        width: 0.35.sw,
                        margin: EdgeInsets.only(left: 10.w),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            LayoutBuilder(
                              builder:(ctx2,constraints2)=> Container(
                                  alignment: Alignment.bottomLeft,
                                  height: constraints.maxHeight,
                                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                                  decoration: BoxDecoration(
                                      color: primColor,
                                      borderRadius: BorderRadius.circular(10.r),
                                      image: DecorationImage(
                                          image: NetworkImage('https://www.skipeak.net/system/redactor_assets/pictures/683/evan-wise-D99y38Na5Xo-unsplash.jpg'),
                                          fit: BoxFit.fill,
                                          colorFilter: ColorFilter.mode(Colors.black26, BlendMode.srcOver)

                                      )
                                  ),
                                  child: Container(
                                    child: autoText(dishes[index].dish, 1, 20.ssp , FontWeight.w700, Colors.white),
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

newRestaurants(List<RestaurantElement> restaurants ){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 10.w),
        child: autoText('New', 1,  25.ssp , FontWeight.w700, Colors.black),
      ),
      Container(
        height: 0.14.sh,
        margin: EdgeInsets.only(bottom: 50.h),
        child: ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                        width: 0.27.sw,
                        margin: EdgeInsets.only(left: 10.w),
                        child:Column(
                          children: <Widget>[
                            Container(
                              height: 0.1.sh,
                                decoration: BoxDecoration(
                                    color: primColor,
                                    borderRadius: BorderRadius.circular(10.r),
                                    image: DecorationImage(
                                        image: NetworkImage(restaurants[index+18].image),
                                        fit: BoxFit.fill
                                    )
                                )
                            ),
                            Container(
                              height: 0.04.sh,
                              alignment: Alignment.center,
                              child: autoText(restaurants[index+18].id,2, 20.ssp , FontWeight.w500, Colors.black),
                            )
                          ],
                        )
                    );
            }),
      ),
    ],
  );
}