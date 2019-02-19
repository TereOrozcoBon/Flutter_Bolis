import 'package:flutter/material.dart';
import 'package:bolis_app/models/users.dart'; //model
import 'package:bolis_app/screens/UserDetailScreen.dart';

class UserListPage extends StatelessWidget {

  //genera lista de usuarios (genérico)
  final lstUsers = List<User>.generate(20, (i) => User(
  'nombre $i',
  'apellido $i',
  'correo $i',
  'avatar $i',
  ),
  );


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
}
