// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:theme_changer/widget/SectionsWidgets.dart';
import 'package:theme_changer/widget/feildWidget.dart';
import 'package:theme_changer/widget/navigationbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

bool _iconBool = false;
IconData _iconLight = Icons.wb_sunny_outlined;
IconData _iconDark = Icons.nights_stay_outlined;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('VMagazine'),
          centerTitle: true,
          leading: IconButton(
              onPressed: null, icon: const Icon(Icons.keyboard_arrow_left)),
          actions: <Widget>[
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.equalizer,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _iconBool = !_iconBool;
                });
              },
              icon: Icon(_iconBool ? _iconDark : _iconLight),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications_outlined,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(
                color: Color(0xffE3E8EF),
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    //Search Bar
                    FormFildWidget(),
                    SizedBox(
                      height: 20,
                    ),

                    SectionsWidgets(
                      text: 'Recently Viewed',
                      path1: 'assets/images/third.png',
                      path2: 'assets/images/second.png',
                      path3: 'assets/images/third.png',
                      path4: 'assets/images/first.png',
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    SectionsWidgets(
                      text: 'New & Trending',
                      path1: 'assets/images/first.png',
                      path2: 'assets/images/third.png',
                      path3: 'assets/images/fifth.png',
                      path4: 'assets/images/first.png',
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    SectionsWidgets(
                      text: 'Popular',
                      path1: 'assets/images/second.png',
                      path2: 'assets/images/fifth.png',
                      path3: 'assets/images/third.png',
                      path4: 'assets/images/first.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBarWidget(),
      ),
    );
  }
}

//Light Theme
ThemeData _lightTheme = ThemeData(
  primarySwatch: Colors.amber,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    iconTheme: IconThemeData(color: Colors.red),
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
  ),
  textTheme: const TextTheme(
    headline4: TextStyle(
        color: Colors.red, fontSize: 102, fontWeight: FontWeight.bold),
  ),
);

//Dark Theme
ThemeData _darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.transparent,
  ),
);
