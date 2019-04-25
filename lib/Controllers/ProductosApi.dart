import 'package:bolis_app/models/Productos.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

const URL = "http://5c6b35cfe85ff40014085511.mockapi.io/api/v1/";

Future<List<Producto>> get() async { //getStock

  var data = await http.get(URL + "productos");
  var jsonData = json.decode(data.body);
  List<Producto> productos = [];

  for(var a in jsonData){
    Producto producto;
    producto = Producto(a["id"], a["sabor"], a["cantidad"].toString());
    productos.add(producto);
  }

  print(productos.length);
  return productos;
}

