

import 'package:flutter/material.dart';
import 'package:navigation/exercise02.dart';
import 'package:navigation/exercise03.dart';

import 'bottomNavigationBar.dart';
import 'exersice01.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(

                      children:[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('assets/image/Ismail.jpg'),
                            radius: 30,
                            backgroundColor: Colors.transparent,
                          ),
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

                  ]
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      //Notification icon
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.notifications))
                ],
              ),
              //search bar
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(.5),
                    child: Row(
                      children: [
                        Center(child: Icon(Icons.search, color: Colors.blueGrey.shade800,)),
                        SizedBox(
                          width: 8,
                        ),
                        Center(child: Text('Search', style: TextStyle(color: Colors.blueGrey.shade800, fontFamily: 'serif', fontSize: 14),)),
                      ],

                    ),
                  ),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('☺️', style: TextStyle(color: Colors.white, fontSize: 24),)),
                  ),
                  Center(
                    child: Container(
                      height: 60,
                      width: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Text('🙂', style: TextStyle(color: Colors.white, fontSize: 24),)),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('️🙁', style: TextStyle(color: Colors.white, fontSize: 24),)),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('️😣', style: TextStyle(color: Colors.white, fontSize: 24),)),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white54,
                  ),
// Exercise part
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Exercise', style: TextStyle(color: Colors.blueGrey, fontSize: 24, fontFamily: 'serif', fontWeight: FontWeight.bold),),
                        ),

                        //list of Exercise
                        ExerciseScreen(),
                        ExerciseScreen02(),
                        ExerciseScreen03(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
