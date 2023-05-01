import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:test_1/HomePage.dart';

import 'Explore.dart';
import 'Menu.dart';
import 'Progress.dart';

class Abstract extends StatefulWidget {
  @override
  _AbstractState createState() => _AbstractState();
}

class _AbstractState extends State<Abstract> {
  int _selectedIndex = 0;

  List<Widget> tabItems = [Progress(), Explore(), HomePage(), Menu()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'SOLOCADEMY',
            style: TextStyle(fontFamily: 'Castellar'),
          ),
          backgroundColor: Color(0xff3a89b9),
        ),
        body: Center(
          child: tabItems[_selectedIndex],
        ),
        bottomNavigationBar: FlashyTabBar(
          animationCurve: Curves.linear,
          backgroundColor: Color(0xffeeeeee),
          selectedIndex: _selectedIndex,
          iconSize: 30,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            FlashyTabBarItem(
              icon: Icon(Icons.event, color: Color(0xff3a89b9),),
              title: Text('Progress', style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poltawski',
                color: Color(0xff3a89b9),
              ),),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.search, color: Color(0xff3a89b9),),
              title: Text('Explore', style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poltawski',
                color: Color(0xff3a89b9),
              ),),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.home_sharp, color: Color(0xff3a89b9),),
              title: Text('Home', style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poltawski',
                color: Color(0xff3a89b9),
              ),),
            ),
            FlashyTabBarItem(
              icon: Icon(Icons.menu, color: Color(0xff3a89b9),),
              title: Text('Menu', style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poltawski',
                color: Color(0xff3a89b9),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
