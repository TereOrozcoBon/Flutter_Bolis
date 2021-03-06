import 'package:flutter/material.dart';
import 'package:progress_hud/progress_hud.dart';
import 'package:bolis_app/screens/PedidoDetalleScreen.dart';
import 'package:bolis_app/Controllers/PedidosApi.dart';


import 'package:bolis_app/models/pedidos.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';



class PedidosListPage extends StatefulWidget {
  final String title;
  final String id;
  PedidosListPage({Key key, this.title, this.id}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _PedidosListPage();
  }
}

class _PedidosListPage extends State<PedidosListPage> {
  //Libreria de progreso
  ProgressHUD _progressHUD;
  bool _loading = true;

  int _counter = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _progressHUD = new ProgressHUD(
      backgroundColor: Colors.black12,
      color: Colors.white,
      containerColor: Colors.blue,
      borderRadius: 5.0,
      text: 'Cargando',
      loading: true,
    );



  }



/*
  Future<List<Pedido>> getPedidos(idCliente) async {

    var aaa = idCliente;


    const URL = "http://5c6b35cfe85ff40014085511.mockapi.io/api/v1/users/1/pedidos";
    var data = await http.get(URL);

    var jsonData = json.decode(data.body);
    List<Pedido> pedidos = [];

    for(var a in jsonData){
      Pedido pedido;
      pedido = Pedido(a["id"], a["userId"] , a["sabor"], a["cantidad"]);
      pedidos.add(pedido);
    }

    print(pedidos.length);
    return pedidos;
  }
*/


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: FutureBuilder(
          future: getDatosAlumno(widget.id),
          builder: (BuildContext context, AsyncSnapshot snapshot){


            if(snapshot.data ==  null){
              return Container(
                child: Center(
                    child: _progressHUD //CircularProgressIndicator(),  //Text("Cargando..."),
                ),
              );
            }

            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index){

                return ListTile(

                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png" //snapshot.data[index].imagen //"https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"
                    ),
                  ),

                  title: Text(snapshot.data[index].sabor),

                  subtitle: Text(snapshot.data[index].cantidad.toString()),
                  /*
                  onTap: () {
                    Navigator.push(context, new MaterialPageRoute(builder:(context) => PedidoDetalle(snapshot.data[index])));
                  },
                  */
                );

              },
            );
          },
        ),
      ),
    );
  }
}

