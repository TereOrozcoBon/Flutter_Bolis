import 'package:flutter/material.dart';
import 'package:bolis_app/models/users.dart'; //model
import 'package:bolis_app/screens/UserDetailScreen.dart';
import 'dart:async';

class UserListPage extends StatefulWidget{
  UserListPage({Key key}) : super(key: key);

/*
  //genera lista de usuarios (genérico)
  final lstUsers = List<User>.generate(20, (i) => User(
      'nombre $i',
      'apellido $i',
      'correo $i',
      'avatar $i',
    ),
  );
*/


  @override
  State<StatefulWidget> createState() {

    //return new UserListPageState(lstUsers: lstUsers);
    return new UserListPageState();
  }
  //UserListPageState createState() => UserListPageState();
}

//class UserListPageState extends StatelessWidget {
class UserListPageState extends State<UserListPage> {


  //UserListPageState({this.lstUsers});

  //final List<String> lstUsers;
  //genera lista de usuarios (genérico)
  final lstUsers = List<User>.generate(20, (i) => User(
  'id $i',
  'nombre $i',
  'apellido $i',
  'correo $i',
  'avatar $i',
  ),
  );

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey  = new GlobalKey<RefreshIndicatorState>();

  Future<Null> _handleRefresh() {
    final Completer<Null> completer = new Completer<Null>();

    new Timer(const Duration(seconds: 2), () {
      completer.complete(null);
    });

    return completer.future.then((_) {
      _scaffoldKey.currentState?.showSnackBar(
        new SnackBar(
          content: const Text('Refresh complete'),
          action: new SnackBarAction(
            label: 'RETRY',
            onPressed: () {
              _refreshIndicatorKey.currentState.show();
            },
          ),
        ),
      );
    });
  }

  //IMPLEMENTACIÓN EDIT/REMOVE CON DESLIZAMIENTO
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Usuarios registrados"),
      ),
      body:
        new RefreshIndicator(
            child: ListView.builder(
              itemCount: lstUsers.length,
              itemBuilder: (context, index){
                //final item = lstUsers[index];

//print(item);

                return new Dismissible(
                  //key: new Key(item.correo),
                  key: new Key(lstUsers[index].correo),
                  child: ListTile(
                    title: Text(lstUsers[index].nombre),
                    subtitle: Text(lstUsers[index].correo),
                    leading: Icon(Icons.account_circle, size: 40.0,),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => UserDetailScreen ( objUsers: lstUsers[index]),
                      ),
                      );
                    },
                  ),
                    //key: new Key(item)
                  onDismissed: (direction) {

                    /*
                    setState(() {
                      lstUsers.removeAt(index);
                    });
*/
                    if(direction == DismissDirection.endToStart){
                      Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text(lstUsers[index].correo + " archivado")),
                      );
                    }else if(direction  == DismissDirection.startToEnd){
                      Scaffold.of(context).showSnackBar(
                        new SnackBar(content: new Text(lstUsers[index].correo + " eliminado")),
                      );
                    }
                  },

                  background: new Container(
                    color: Colors.red,
                    child: const ListTile(
                      leading: Icon(Icons.delete, color: Colors.white),
                    ),
                  ),

                  secondaryBackground: new Container(
                    color: Colors.green,
                    child: const ListTile(trailing: const Icon(Icons.edit, color: Colors.white)),
                  ),




                );

                /*
                return ListTile(
                  title: Text(lstUsers[index].nombre),
                  subtitle: Text(lstUsers[index].correo),
                  leading: Icon(Icons.account_circle, size: 40.0,),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailScreen ( objUsers: lstUsers[index]),
                    ),
                    );
                  },
                );
                */
              },
            ),
            onRefresh: _handleRefresh,
            color: Colors.orange,
            key: _refreshIndicatorKey
        )

    );
  }


  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Usuarios registrados"),
      ),
      body:
          ListView.builder(
            itemCount: lstUsers.length,
              itemBuilder: (context, index){
              return ListTile(
                title: Text(lstUsers[index].nombre),
                subtitle: Text(lstUsers[index].correo),
                leading: Icon(Icons.account_circle, size: 40.0,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserDetailScreen ( objUsers: lstUsers[index]),
                  ),
                  );
                },
              );
          },
          ),
    );
  }
  */
}
