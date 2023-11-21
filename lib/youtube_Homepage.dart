import 'package:flutter/material.dart';
import 'package:navigation/bottomNav/Screens/home.dart';

import 'bottomNav/Screens/accounts.dart';
import 'bottomNav/Screens/f_add.dart';
import 'bottomNav/Screens/shortsScreen.dart';
import 'bottomNav/Screens/subcription.dart';

class Youtube_HomePage extends StatefulWidget {
  const Youtube_HomePage({super.key});

  @override
  State<Youtube_HomePage> createState() => _Youtube_HomePageState();
}

class _Youtube_HomePageState extends State<Youtube_HomePage> {
  int _currentIndex = 0;
  final List _page = const[HomePage(), Shorts(), f_Add(), subscription(),AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Premium', style: TextStyle(fontSize: 24, fontFamily: 'serif', color: Colors.white),),
        backgroundColor: Colors.black87,
        leading: Icon(Icons.logo_dev, color: Colors.white,),
        actions: [
          IconButton(icon: Icon(Icons.stop_screen_share,color: Colors.white, ), onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.black54,
                context: context,
                builder: (BuildContext context){
                  return const SizedBox(
                    height: 400,
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.airplay,color: Colors.white),
                          title: Text('Airplay and Bluetooth Mode', style: TextStyle( color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(Icons.phonelink,color: Colors.white),
                          title: Text('Link With TV Code', style: TextStyle(color: Colors.white),),
                        ),
                        ListTile(
                          leading: Icon(Icons.info_outline_rounded,color: Colors.white),
                          title: Text('Learn More', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),

                  );

                }
            );
          },),
          IconButton(icon: Icon(Icons.notifications,color: Colors.white, ), onPressed: () {},),
          IconButton(icon: Icon(Icons.search,color: Colors.white, ), onPressed: () {},)
        ],
      ),

      // Bottom Navigation Bar Start

      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_shortcut_rounded),
            label: 'Shorts',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined, size: 60,),
            label: 'Add Shorts',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_rounded),
            label: 'Subscription',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Accounts',
            backgroundColor: Colors.black87,
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
