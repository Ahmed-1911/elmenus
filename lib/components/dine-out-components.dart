import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/components/widgets/public-widgets.dart';
import 'package:flutter/material.dart';

moodContainer(BuildContext context,BoxConstraints constraints,String title,String image){
  return Container(
    margin: EdgeInsets.all(2),
    padding: EdgeInsets.symmetric(horizontal: 2),
    width: constraints.maxWidth*0.98 / 2,
    height: constraints.maxHeight*0.77 / 2,
    alignment: Alignment.bottomLeft,
    child: autoText(title, 1, 20, FontWeight.w700, Colors.white),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
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
    margin: EdgeInsets.only(bottom: 15),
    height: getHeight(context)*0.4,
    child: LayoutBuilder(
      builder:(ctx,constraints)=> Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: constraints.maxHeight*0.2,
            margin: EdgeInsets.only(left: constraints.maxWidth*0.05),
            alignment: Alignment.centerLeft,
            child: autoText('Discover by moods', 1, 21, FontWeight.w700, Colors.black),
          ),
          Container(
            height: constraints.maxHeight*0.8,
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    moodContainer(context, constraints, 'CHEAP EATS', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80'),
                    moodContainer(context, constraints, 'COFFEESHOPS', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80')
                  ],
                ),
                Column(
                  children: <Widget>[
                    moodContainer(context, constraints, 'CASUAL DINNING', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80'),
                    moodContainer(context, constraints, 'WORK OR STUDY', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHw%3D&w=1000&q=80')
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: autoText(title, 1,  21 , FontWeight.w500, Colors.black),
      ),
      Container(
        height: getHeight(context) * 0.18,
        margin: EdgeInsets.only(bottom: getHeight(context)*0.01),
        child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return LayoutBuilder(
                builder: (ctx,constraints)=>
                    Container(
                        width: getWidth(context) * 0.4,
                        margin: EdgeInsets.only(left: 10),
                        color: Colors.white,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            LayoutBuilder(
                              builder:(ctx2,constraints2)=> Container(
                                  alignment: Alignment.bottomLeft,
                                  height: constraints.maxHeight*0.6,
                                  color: Colors.greenAccent,
                                  padding: EdgeInsets.only(left: constraints2.maxWidth*0.1,bottom: constraints.maxHeight*0.1,top: constraints.maxHeight*0.22),
                                  child: Container(
                                    //height: constraints2.maxHeight*0.1,
                                    width: constraints2.maxWidth*0.3,
                                    color: Colors.red,
                                  )
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              height: constraints.maxHeight*0.2,
                              child: autoText('McDonald\'s', 1,  17 , FontWeight.w500, Colors.black),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              height: constraints.maxHeight*0.2,
                              child: autoText('*****', 1, 20 , FontWeight.w900, Colors.amber),
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: autoText('Discover Top Dish', 1,  21 , FontWeight.w500, Colors.black),
      ),
      Container(
        height: getHeight(context) * 0.1,
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            LayoutBuilder(
                              builder:(ctx2,constraints2)=> Container(
                                  alignment: Alignment.bottomLeft,
                                  height: constraints.maxHeight,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  color: Colors.greenAccent,
                                  child: Container(
                                    child: autoText('Koshari', 1, 20 , FontWeight.w700, Colors.white),
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

