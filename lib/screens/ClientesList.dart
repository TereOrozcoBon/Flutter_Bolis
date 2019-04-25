import 'package:flutter/material.dart';

import 'package:progress_hud/progress_hud.dart';
//import 'package:bolis_app/models/Alumno.dart';
import 'package:bolis_app/models/pedidos.dart';
//import 'package:graphql_app/Views/DetalleAlumnoScreen.dart';
import 'package:bolis_app/screens/PedidoDetalleScreen.dart';
import 'package:bolis_app/Controllers/ClientesApi.dart';

class ClientesListPage extends StatefulWidget {

  ClientesListPage({Key key, this.title}) : super(key: key);

  final String title;

  /*@override
  _PedidoPageState createState() => _PedidoPageState();*/

  @override
  State<StatefulWidget> createState() {

    //return new UserListPageState(lstUsers: lstUsers);
    return new _ClientesListPage();
  }

}

class _ClientesListPage extends State<ClientesListPage> {



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


  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }



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
          future: getData(),
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
                        snapshot.data[index].imagen //"https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"
                    ),
                  ),

                  title: Text(snapshot.data[index].nombre),

                  subtitle: Text(snapshot.data[index].apellido),
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


