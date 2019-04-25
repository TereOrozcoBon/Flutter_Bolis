import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart'; //se requiere cambiar el YAML de pubspec


import 'package:bolis_app/screens/HomeScreen.dart';
import 'package:bolis_app/screens/UserListScreen.dart';
import 'package:bolis_app/screens/UserRegisterScreen.dart';
import 'package:bolis_app/screens/AdminStatistics.dart';
import 'package:bolis_app/screens/PromotionsScreen.dart';
import 'package:bolis_app/screens/PedidoScreen.dart';
import 'package:bolis_app/screens/ClientesList.dart';
import 'package:bolis_app/screens/PedidosAdd.dart';
//cmp:
import 'package:bolis_app/componentes/BottomNavigation.dart';
import 'package:bolis_app/componentes/ListBottomNavigation.dart';
import 'package:bolis_app/componentes/PedidosBottomNavigation.dart';

class NavigationDrawer extends StatefulWidget {

  @override
  _NavigationDrawer createState() => _NavigationDrawer();
}

class _NavigationDrawer extends State<NavigationDrawer>  with WidgetsBindingObserver {

  changeNavigatorColor() async {
    try {
      FlutterStatusbarcolor.setStatusBarWhiteForeground(false);

      await FlutterStatusbarcolor.setStatusBarColor(Colors.blue);
    } on PlatformException catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    setState() {
      changeNavigatorColor();
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader( //encabezado del Drawer
            accountName: Text("Tere Bon"), accountEmail: Text("tere@gmail.com"),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new FlutterLogo(size: 42.0),
            ),
          ),






          Ink(
            color: Colors.blue,
            child: new ListTile(
              leading: const Icon(Icons.home, color: Colors.white,),
              title: Text("Quiero bolis!!!", style: TextStyle(color: Colors.white),),
              onTap: () {
                //Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(
                        //builder: (BuildContext context) => AppBottomNavigation())
                        //builder: (BuildContext context) => PedidoAddPage(title: "Quiero bolis!",))
                        builder: (BuildContext context) => MyApp())
                );
              },
            ),
          ),

          new ListTile(
            leading: const Icon(Icons.list, color: Colors.white,),
            title: Text("Navigations views"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => MyHomePage())
              );
            },
          ),

          new ListTile(
            leading: const Icon(Icons.list, color: Colors.orange,),
            title: Text("Listas"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => ListBottomNavigation())
                      //builder: (BuildContext context) => ClientesListPage(title: "Lista de Clientes"))
              );
            },
          ),




          new ListTile(
            leading: const Icon(Icons.list, color: Colors.orange,),
            title: Text("Lista usuarios registrados"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => UserListPage())
              );
            },
          ),




          new ListTile(
            title: Text("Registro"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => UserRegisterPage())
              );
            },
          ),


          new ListTile(
            leading: const Icon(Icons.list, color: Colors.orange,),
            title: Text("Pedidos"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => PedidiosBottomNavigation())
                //builder: (BuildContext context) => ClientesListPage(title: "Lista de Clientes"))
              );
            },
          ),




          /*
          new ListTile(
            leading: const Icon(Icons.star, color: Colors.orange,),
            title: Text("Pedidos"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => PedidosListPage(title: "Lista de Pedidos"))
              );
            },
          ),
*/

          new ListTile(
            leading: const Icon(Icons.star, color: Colors.orange,),
            title: Text("Promociones"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => PromotionsScreen())
              );
            },
          ),


          new Divider(),
          new ListTile(
            leading: const Icon(Icons.info),
            title: Text("Administración"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => AdminStatistics())
              );
            },
          )
        ],
      ),
    );
  }
}