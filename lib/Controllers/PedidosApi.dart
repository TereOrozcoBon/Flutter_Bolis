import 'package:bolis_app/models/pedidos.dart';
//import 'package:bolis_app/models/users.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

const URL = "http://5c6b35cfe85ff40014085511.mockapi.io/api/v1/";


Future<List<Pedido>> getDatosAlumno(idCliente) async {

  //var data = await http.get(URL + "users/1/pedidos");
  var data = await http.get(URL + "users/" + idCliente + "/pedidos");

  var jsonData = json.decode(data.body);
  List<Pedido> usuarios = [];

  for(var a in jsonData){
    Pedido usuario;
    usuario = Pedido(a["id"], a["userId"], a["sabor"], a["cantidad"]);
    usuarios.add(usuario);
  }

  print(usuarios.length);
  return usuarios;
}