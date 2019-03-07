import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart'; //se requiere cambiar el YAML de pubspec


import 'package:bolis_app/screens/HomeScreen.dart';
import 'package:bolis_app/screens/UserListScreen.dart';
import 'package:bolis_app/screens/UserRegisterScreen.dart';


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
              title: Text("Navigations views", style: TextStyle(color: Colors.white),),
              onTap: () {
                //Navigator.of(context).pop();
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (BuildContext context) => MyHomePage())
                );
              },
            ),
          ),
          new ListTile(
            leading: const Icon(Icons.list, color: Colors.white,),
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
          new Divider(),
          new ListTile(
            leading: const Icon(Icons.info),
            title: Text("item 4"),
            onTap: () {
              //Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (BuildContext context) => UserRegisterPage())
              );
            },
          )
        ],
      ),
    );
  }
}