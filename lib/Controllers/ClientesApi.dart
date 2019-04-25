import 'package:bolis_app/models/users.dart';
//import 'package:bolis_app/models/PedidoByCliente.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

const URL = "http://5c6b35cfe85ff40014085511.mockapi.io/api/v1/";


Future<List<User>> getData() async {
  var data = await http.get(URL + "users");
  //var data = await http.get(URL + "users/1/pedidos");
  var jsonData = json.decode(data.body);
  List<User> usuarios = [];
  User usuario;
  var pedidoExists = false;

  for (var a in jsonData) {

    var aaa = a["pedidos_"];

    for(var b in aaa){
      pedidoExists = true;
    }

    if(pedidoExists == true){
      usuario =
          User(a["id"], a["nombre"], a["apellido"], a["correo"], a["imagen"]);
      usuarios.add(usuario);
    }

    pedidoExists = false;
  }

  print(usuarios.length);
  return usuarios;
}