import 'package:flutter/material.dart';
import 'package:simpleui/Dua.dart';
import 'package:simpleui/Home.dart';
import 'dart:core';

import 'package:simpleui/PrayerTime.dart';
import 'package:simpleui/Quran.dart';
import 'Lectures.dart';

void main(){
  runApp(MaterialApp(
    home: homePage(),
  ),
  );
}

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    PrayerTime(),
    Quran(),
    Home(),
    Dua(),
    Lectures(),
  ];

  void onTapped(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: _children[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 25.0,
        unselectedFontSize: 10.0,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.timer, color: Colors.black),
            title: Text('PrayersTime', style: TextStyle(color: Colors.black)),
            //active: Colors.red,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book, color: Colors.black,),
            title: Text('DailyQuran', style: TextStyle(color: Colors.black)),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black, size: 30.0,),
            title: Text('Home', style: TextStyle(color: Colors.black),),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.apps, color: Colors.black),
            title: Text('Duas', style: TextStyle(color: Colors.black),),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.tv, color: Colors.black,),
            title: Text('Lectures', style: TextStyle(color: Colors.black),),
          ),
        ],

      ),
    );
  }
}
