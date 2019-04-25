import 'package:flutter/material.dart';


class AdminStatistics extends StatefulWidget {
  AdminStatistics({Key key}) : super(key: key);

  @override
  AdminStatisticsState createState() => AdminStatisticsState();
}



//class AdminStatistics extends StatelessWidget {
class AdminStatisticsState extends State<AdminStatistics> {

  @override
  Widget build(BuildContext context) {
    //return new SingleChildScrollView(
    return new Scaffold(
      appBar: AppBar(
        title: Text("Administración"),
      ),
      body: new

    SingleChildScrollView(
      padding: EdgeInsets.all(10.0),
      child: new Column(
        children: <Widget>[


          new Card(
            color: Color(0xFFF3862FF),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 50.0
                  ),

                  title: const Text('Tere Bon',style: TextStyle(
                      color: Colors.white, fontSize: 20.0
                  ),
                  ),


                  subtitle: const Text('Administrador',style: TextStyle(
                      color: Colors.white
                  )),


                ),

              ],
            ),
          ),



          new Card(
            color: Colors.orange,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'res/images/material_design_2.jpg',
//                  height: 60.0,
                  fit: BoxFit.fill,
                ),
                const ListTile(
                  title: const Text('Promociones de Bolis', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  subtitle: const Text('Compartir las promociones', style: TextStyle(fontSize: 15.0),),
                ),

                new ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new FlatButton(
                        child: const Text('Cancelar', style: TextStyle(color: Colors.purple)),
                        onPressed: () {},
                      ),
                      new FlatButton(
                        child: const Text('Aceptar', style: TextStyle(color: Colors.purple),),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ),

          new Card(
            color: Colors.purple,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Image.asset(
                  'res/images/material_design_2.jpg',
//                  height: 60.0,
                  fit: BoxFit.fill,
                ),
                const ListTile(
                  title: const Text('Inventario', style: TextStyle(color: Colors.orange, fontSize: 20.0),),
                  subtitle: const Text('Consultar o actualizar los inventarios', style: TextStyle(color: Colors.orange),),
                ),
                new ButtonTheme.bar(
                  // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new FlatButton(
                        child: const Text('Consultar', style: TextStyle(color: Colors.white),),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),



              ],
            ),
          ),



          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: <Widget>[
                    new Image.asset(
                      'res/images/material_design_4.jpg',
//                      height: 192.0,
                      fit: BoxFit.fill,
                    ),
                    new ListTile(
                      title: new Text(
                        'Promociones de Bolis',
                        style:
                        new TextStyle(color: Colors.purple, fontSize: 24.0),
                      ),
                    ),
                  ],
                ),
                new ButtonTheme.bar(
                  child: new ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new IconButton(
                        icon: new Icon(Icons.favorite, color: Colors.red),
                        onPressed: () {},
                      ),
                      new IconButton(
                        icon: new Icon(Icons.bookmark, color: Colors.brown),
                        onPressed: () {},
                      ),
                      new IconButton(
                        icon: new Icon(Icons.share, color: Colors.blue),
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
    );
  }
}