import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:navigation/bottomNav/Screens/Search.dart';
import 'package:navigation/bottomNav/Screens/accounts.dart';
import 'package:navigation/bottomNav/Screens/home.dart';
import 'package:navigation/bottomNav/Screens/subcription.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  int _currentIndex = 0;
  final List _page = [HomePage(), searchPage(), AccountPage(), subscription()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Drawer', style:TextStyle(fontFamily: 'serif', fontSize: 24, color: Colors.white),),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.notifications, color: Colors.white,), onPressed: () {}, ),
          IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {}, )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Header', style: TextStyle(fontSize: 24, fontFamily: 'serif', color: Colors.white,),),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
            ),
            ),

            ListTile(
              title: const Text('Item 1'),
              onTap: (){},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: (){},
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: (){},
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/image/Ismail.jpg'),
                            radius: 30,
                            backgroundColor: Colors.transparent,
                          ),
                          //text Column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text('Hi Ismail',
                                style: TextStyle(fontSize: 24, fontFamily: 'serif', color: Colors.white),
                              ),
                              Text('02 January, 2023',
                                style: TextStyle(fontSize: 12, fontFamily: 'serif', color: Colors.white),
                              ),
                            ],
                          ),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white54,
                                borderRadius: BorderRadius.circular(10),
                              ),

                              //Notification icon
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.notifications))
                        ]
                    ),
                    //search bar
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.white,),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Search', style: TextStyle(color: Colors.white, fontFamily: 'serif', fontSize: 14),),
                        ],

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('How Do You Feel?',
                            style: TextStyle(fontSize: 20, fontFamily: 'serif', color: Colors.white),
                          ),
                        ),
                        Icon(Icons.more_horiz, color: Colors.white,)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Very Good', style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Good', style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text('Bad', style: TextStyle(color: Colors.white, fontSize: 16),),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: _page[_currentIndex],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurpleAccent,
          currentIndex: _currentIndex,
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
            backgroundColor: Colors.deepPurpleAccent
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: 'Search',
            backgroundColor: Colors.deepPurpleAccent
          ),
          BottomNavigationBarItem(icon: Icon(Icons.subscriptions_rounded),
          label: 'Subscription',
            backgroundColor: Colors.deepPurpleAccent
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: 'Profile',
            backgroundColor: Colors.deepPurpleAccent
          )
        ],
          onTap: (Index){
            setState(() {
              _currentIndex = Index;
            });
          },
        ),
    );
  }

}
