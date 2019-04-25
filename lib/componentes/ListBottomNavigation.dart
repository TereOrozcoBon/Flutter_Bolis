import 'package:flutter/material.dart';
import 'package:bolis_app/screens/OrdersScreen.dart';
import 'package:bolis_app/screens/AdminStatistics.dart';
import 'package:bolis_app/screens/UserListScreen.dart';

import 'package:bolis_app/screens/ClientesList.dart';
import 'package:bolis_app/screens/ProductosList.dart';


class ListBottomNavigation extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ListBottomNavigation();
  }

}

class _ListBottomNavigation extends State<ListBottomNavigation>{

  int indexTap = 0;

  final List<Widget>  widgetsChildres = [
    ClientesListPage(title:"Lista de Clientes"),
    ProductosListPage(title: "Stock"),
    //UserListPage()

  ];

  void onTapTapped(int index){

    //Llamar toda la funcionalidad de StatefulWidget
    setState(() {
      indexTap = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: widgetsChildres[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple,
        ),
        child: BottomNavigationBar(
            currentIndex: indexTap,
            onTap: onTapTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle),
                  title: Text("")
              ),

              BottomNavigationBarItem(
                  icon: Icon(Icons.battery_std),
                  title: Text("")
              ),
              /*BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              )*/
            ]
        ),
      ),
    );
  }

}