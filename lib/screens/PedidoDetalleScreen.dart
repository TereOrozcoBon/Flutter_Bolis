import 'package:flutter/material.dart';
import 'package:bolis_app/models/pedidos.dart';

class PedidoDetalle extends StatelessWidget{

  final Pedido pedido;

  PedidoDetalle(this.pedido);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(pedido.sabor),
      ),
    );
  }

}