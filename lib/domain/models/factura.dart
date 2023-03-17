import 'package:compras_getx/domain/models/articulo.dart';
import 'package:compras_getx/domain/models/cliente.dart';

class Factura {
  late String numero;
  late DateTime fecha;
  late List<Articulo> listaArt;
  late Cliente cliente;
}

