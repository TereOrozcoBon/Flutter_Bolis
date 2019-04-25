import 'package:flutter/material.dart';
import 'package:progress_hud/progress_hud.dart';
import 'package:bolis_app/Controllers/ProductosApi.dart';


class ProductosListPage extends StatefulWidget {

  ProductosListPage({Key key, this.title}) : super(key: key);

  final String title;

  /*@override
  _PedidoPageState createState() => _PedidoPageState();*/

  @override
  State<StatefulWidget> createState() {

    //return new UserListPageState(lstUsers: lstUsers);
    return new _ProductosListPage();
  }

}

class _ProductosListPage extends State<ProductosListPage> {



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
        child: FutureBuilder(
          future: get(),
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
                        "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png"
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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
