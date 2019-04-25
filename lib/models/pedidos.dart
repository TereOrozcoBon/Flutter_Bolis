/*class Pedido {
  String id = "";
  String cliente = "";
  String sabor = "";
  int cantidad = 0;

  //constructor
  Pedido(this.id, this.cliente, this.sabor, this.cantidad);
}
*/

class Pedido {
  final String id;
  final String userId;
  final String sabor;
  final int cantidad;

  Pedido(this.id, this.userId, this.sabor, this.cantidad);
}