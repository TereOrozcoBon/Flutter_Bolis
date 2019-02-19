import 'package:bolis_app/screens/UserDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:bolis_app/models/users.dart'; //model

class UserDetailScreen extends StatelessWidget {

  final User objUsers;

  UserDetailScreen({Key key, @required this.objUsers}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${objUsers.nombre}"),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child:
          Container(
            child: Column(
              children: <Widget>[
                Text('${objUsers.correo}'),
               /* RaisedButton(
                  child: Text('Siguiente'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: null)),
            ),*/
               ],
          ),
        ),
      ),
    );
  }
}
