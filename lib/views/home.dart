import 'package:elmenus/components/constrains.dart';
import 'package:elmenus/views/delivery.dart';
import 'dine-out/dine-out.dart';
import 'package:elmenus/views/my-orders.dart';
import 'package:elmenus/views/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<Home> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Delivery(),
      DineOut(),
      MyOrders(),
      Profile(),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.motorcycle), title: Text('Delivery')),
      const BottomNavigationBarItem(
          icon: Icon(Icons.local_dining), title: Text('Dine out')),
      const BottomNavigationBarItem(
          icon: Icon(Icons.featured_play_list), title: Text('My Orders')),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person), title: Text('profile')),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      fixedColor: primColor,
      iconSize: 25.sp,
      selectedFontSize: 12.ssp,
      unselectedFontSize: 12.ssp,
      unselectedItemColor: Colors.grey,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
