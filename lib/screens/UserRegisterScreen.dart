import 'package:flutter/material.dart';


class UserRegisterPage extends StatefulWidget {
  UserRegisterPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _UserRegisterPageState createState() => _UserRegisterPageState();
}

class _UserRegisterPageState extends State<UserRegisterPage> {
  String mensaje = "";
  final TextEditingController _txtNombre = new TextEditingController();
  final TextEditingController _txtCorreo = new TextEditingController();


  void fabPressed() {
    var nombre = _txtNombre.text;
    var correo = _txtCorreo.text;


    _showDialog("Resultado", "Mensaje a mostrar");

    setState() {
      mensaje = "Mensaje a mostrar";
    }
  }

  void _showDialog(String titulo, String contenido) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(titulo),
          content: new Text(contenido),
          actions: <Widget>[
            new FlatButton(
              child: new Text("cerrar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text(widget.title),
        title: Text("Registro"),
      ),
      body:
        new Container(
          child:
          new Center(
            child:
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new TextField(
                    controller: _txtNombre,
                    decoration: InputDecoration(
                      labelText: "Nombre: "
                    ),
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w200,
                      fontFamily: "Roboto"
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new TextField(
                    controller: _txtCorreo,
                    decoration: InputDecoration(
                        labelText: "Correo: "
                    ),
                    keyboardType: TextInputType.text,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w200,
                        fontFamily: "Roboto"
                    ),
                  ),
                )
              ],
            ),
          ),

          padding: const EdgeInsets.fromLTRB(5.0,10.0,5.0,5.0,),
          alignment: Alignment.center,
        ),

      /*Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),*/
      floatingActionButton: FloatingActionButton(
        onPressed: fabPressed,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
