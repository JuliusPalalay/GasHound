// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:spotifyclone_finals/screens/library.dart';
import 'package:spotifyclone_finals/screens/mappage.dart';
import 'package:spotifyclone_finals/screens/search.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.gas_meter_outlined),
            label: "Gas Up",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: "Directions",
          ),
        ],
      ),
      body: Stack(children: [
        renderView(
          0,
          MainPage(),
        ),
        renderView(
          1,
          MapPage(),
        ),
      ]),
    );
  }

  Widget renderView(int tabIndex, Widget view) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: view,
      ),
    );
  }
}
