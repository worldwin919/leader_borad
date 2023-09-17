import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:leader_borad/Logic/leaderboard.dart';
import 'package:leader_borad/Screens/EarthHome.dart';
import 'package:leader_borad/Screens/Leaders.dart';
import 'package:leader_borad/homepa.dart';

class HPage extends StatefulWidget {
  const HPage({super.key});

  @override
  State<HPage> createState() => _HPageState();
}

class _HPageState extends State<HPage> {
  User us = User('Vishu', 34, 'wdwewe');

  int _currentIndex = 0;

  final List<Widget> _pages = [MyHomePage(),
   EarthHome(), 
   ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 55,
          onTap: _onItemTapped,
          backgroundColor: Colors.green,
          items: [Icon(Icons.home), Icon(Icons.settings)]),
      body: _pages[_currentIndex],
    );
  }
}
