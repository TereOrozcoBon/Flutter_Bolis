import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget{
  OrdersScreen({Key key}) : super(key: key);

  @override
  OrdersScreenState createState() => OrdersScreenState();
}

class OrdersScreenState extends State<OrdersScreen> {

  @override
  Widget build(BuildContext context) {
    //return new SingleChildScrollView(
    return new Scaffold(
      appBar: AppBar(
        title: Text("Cuántos bolis quieres?"),
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

                    title: const Text('Sabores:',style: TextStyle(
                        color: Colors.white, fontSize: 20.0
                    ),
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
                    title: const Text('Slecciona', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  ),
                  new ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new FlatButton(
                          child: const Text('+', style: TextStyle(color: Colors.white),),
                          onPressed: () {},
                        ),
                      ],
                    ),
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
                    title: const Text('Mango con chamoy', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                  ),
                  new ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new FlatButton(
                          child: const Text('+', style: TextStyle(color: Colors.white),),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            new Card(
              color: Colors.brown,
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Image.asset(
                    'res/images/material_design_2.jpg',
//                  height: 60.0,
                    fit: BoxFit.fill,
                  ),
                  const ListTile(
                    title: const Text('Chocolate', style: TextStyle(color: Colors.white, fontSize: 20.0),),
                    leading: const Icon(Icons.add, color: Colors.white,),
                  ),
                  new ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: new ButtonBar(
                      alignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new FlatButton(
                          child: const Text('+', style: TextStyle(color: Colors.white),),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),






          ],
        ),
      ),
    );
  }
}