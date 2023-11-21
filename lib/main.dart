import 'package:flutter/material.dart';
import 'package:navigation/bottomSheet.dart';
import 'package:navigation/youtube_Homepage.dart';

import 'bottomNav/bottomNav.dart';
import 'bottomNavigationBar.dart';
import 'bottomSheet02.dart';
import 'containerScreen.dart';
import 'drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black87),
        useMaterial3: true,
      ),
      home: BottomNavBar(),
    );
  }
}
