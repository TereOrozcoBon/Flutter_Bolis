import 'package:flutter/material.dart';

import 'package:bolis_app/screens/PedidoScreen.dart';
import 'package:bolis_app/screens/ProductosList.dart';
import 'package:bolis_app/screens/ClientesByPedido.dart';

class PedidiosBottomNavigation extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PedidiosBottomNavigation();
  }

}

class _PedidiosBottomNavigation extends State<PedidiosBottomNavigation>{

  int indexTap = 0;

  final List<Widget>  widgetsChildres = [
    ClientesByPedidoPage(title: "Pedidos por Cliente"),
    PedidosListPage(title:"Lista de Pedidos"),
    ProductosListPage(title: "Stock")

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
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("")
              )
            ]
        ),
      ),
    );
  }

}