import 'package:bolis_app/models/lesson.dart';
import 'package:flutter/material.dart';
//import 'package:beautiful_list/detail_page.dart';
import 'package:bolis_app/models/Productos.dart';
import 'package:bolis_app/Controllers/ProductosApi.dart' as api;


import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primaryColor: Color.fromRGBO(58, 66, 86, 1.0), fontFamily: 'Raleway'),
      home: new ListPage(title: 'Hay de:'),
      // home: DetailPage(),
    );
  }

}

class ListPage extends StatefulWidget {
  ListPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List lessons;
  //List productos;

  void Incrementar(sabor) {


    String mensaje = "";
    setState() {
      mensaje = "Mensaje a mostrar";
    }
  }






  @override
  void initState() {
    //lessons = getLessons();
    //productos = getProductos();
    lessons = getProductos();
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.white24))),
        child: Icon(Icons.autorenew, color: Colors.orange),
      ),

      subtitle: Row(
        children: <Widget>[

          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(lesson.level,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
          ),
          new FlatButton(
            onPressed: () => Incrementar(lesson.level),
            child: const Icon(Icons.exposure_neg_1, color: Colors.white, size: 30.0),
          ),
          new FlatButton(
            child: const Icon(Icons.plus_one, color: Colors.white, size: 30.0),
            onPressed: () => Incrementar(lesson.level),
          ),
          new Text(lesson.price.toString(),
              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
        ],
      ),

    );

    Card makeCard(Lesson lesson) => Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        child: makeListTile(lesson),
      ),
    );

    final makeBody = Container(
      // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: lessons.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(lessons[index]);
        },
      ),
    );


    final topAppBar = AppBar(
      elevation: 0.1,
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      title: Text(widget.title),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.list),
          onPressed: () {},
        )
      ],
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
      //bottomNavigationBar: makeBottom,
    );
  }
}

List getProductos() {
  return [
    Lesson(
        title: "",
        level: "Fresa",
        indicatorValue: 0.33,
        price: 20,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Observation at Junctions",
        level: "Rompope",
        indicatorValue: 0.33,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Reverse parallel Parking",
        level: "Chocolate",
        indicatorValue: 0.66,
        price: 30,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Reversing around the corner",
        level: "Pistache",
        indicatorValue: 0.66,
        price: 30,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Incorrect Use of Signal",
        level: "Chamoy",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Engine Challenges",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Self Driving Car",
        level: "Advanced",
        indicatorValue: 1.0,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  ")
  ];
}




/*import 'package:flutter/material.dart';
import 'package:progress_hud/progress_hud.dart';
import 'package:bolis_app/Controllers/ProductosApi.dart';


class PedidoAddPage extends StatefulWidget {
  final String title;
  PedidoAddPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {

    //return new UserListPageState(lstUsers: lstUsers);
    return new _PedidoAddPage();
  }
}

final makeBody = Container(
  child: ListView.builder(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) {
      return makeCard;
    },
  ),
);


final makeCard = Card(
  elevation: 8.0,
  margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
  child: Container(
    decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
    child: makeListTile,
  ),
);


final makeListTile = ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
    leading: Container(
      padding: EdgeInsets.only(right: 12.0),
      decoration: new BoxDecoration(
          border: new Border(
              right: new BorderSide(width: 1.0, color: Colors.white24))),
      child: Icon(Icons.autorenew, color: Colors.white),
    ),
    title: Text(
      "Introduction to Driving",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    ),
    // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

    subtitle: Row(
      children: <Widget>[
        Icon(Icons.linear_scale, color: Colors.yellowAccent),
        Text(" Intermediate", style: TextStyle(color: Colors.white))
      ],
    ),
    trailing:
    Icon(Icons.keyboard_arrow_right, color: Colors.white, size: 30.0));





class _PedidoAddPage extends State<PedidoAddPage> {
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
      body: makeBody,
    );
  }
}*/