
import 'package:flutter/material.dart';

import 'Screens/Search.dart';
import 'Screens/accounts.dart';
import 'Screens/category.dart';
import 'Screens/home.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  List _page = const[
    HomePage(),
    searchPage(),
    categoryPage(),
    AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigtion'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        titleTextStyle:
            TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'serif'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: (){},color: Colors.white,)
        ],
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}, color: Colors.white,),
      ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Accounts',
            backgroundColor: Colors.deepPurple,
          ),
        ],
        onTap: (Index) {
          setState(() {
            _currentIndex = Index;
          });
        },
      ),
    );
  }
}
