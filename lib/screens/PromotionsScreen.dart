import 'package:flutter/material.dart';
import 'package:bolis_app/componentes/CardImage.dart';

class PromotionsScreen extends StatefulWidget {
  PromotionsScreen({Key key}) : super(key: key);

  @override
  PromotionsScreenState createState() => PromotionsScreenState();
}




class PromotionsScreenState extends State<PromotionsScreen> {

  @override
  Widget build(BuildContext context) {
    //return new SingleChildScrollView(

    //Degradiente
    return Stack(
      children: <Widget>[
        new Stack(
          children: <Widget>[
            new Container(
              height: 250.0,
              decoration: BoxDecoration(
                /*gradient: LinearGradient(colors: [
                      Color(0xFF000000),
                      Color(0xFFFF0000)
                    ],*/
                  gradient: LinearGradient(colors: [
                    Colors.purple, Colors.orange
                  ],
                      begin: FractionalOffset(0.2, 0.0),
                      end: FractionalOffset(1.0, 0.6),
                      stops: [0.0,0.6],
                      tileMode: TileMode.clamp

                  )
              ),
              child: Text(
                "Promociones",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontFamily: "Brushcrazy DEMO",
                  //fontWeight: FontWeight.bold
                ),
              ),
              alignment: Alignment(0.0, -0.6),
            ),
          ],
        ),


        //Images Card --> aquí se puede mndar llamar una widget gral
          new  Container(
            height: 350.0,
            child: ListView(
              padding:  EdgeInsets.all(25.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CardImage("assets/img/bolis/bolis1.jpg"),
                CardImage("assets/img/bolis/bolis2.jpg"),
                CardImage("assets/img/bolis/bolis3.jpg"),
                CardImage("assets/img/bolis/bolis4.jpg"),
                CardImage("assets/img/bolis/bolis5.jpg"),
                CardImage("assets/img/bolis/bolis6.jpg")

              ],
            ),
          ),









        ListView(
          children: <Widget>[
            //Descripcion("Prueba 2",4,"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            //ReviewLista()
          ],
        ),


      ],
    );
  }
}