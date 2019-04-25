import 'package:flutter/material.dart';
//import 'package:bolis_app/screens/HomeScreen.dart';
import 'package:bolis_app/screens/UserRegisterScreen.dart';
import 'package:bolis_app/screens/UserListScreen.dart';
import 'package:bolis_app/componentes/NavigationDrawer.dart';
import 'package:bolis_app/screens/AdminStatistics.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:

        NavigationDrawer(),
      //AdminStatistics(),

      //UserListPage(),
      //UserRegisterPage(title: 'Bolis App app'),
        //MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

