import 'package:compras_getx/domain/models/articulo.dart';
import 'package:get/get.dart';

class ComprasController extends GetxController {
  Rx<List<Articulo>> listaGart = Rx<List<Articulo>>([]);
  Rx<List<Articulo>> listaComp = Rx<List<Articulo>>([]);
  var compras = 0.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    listaGart.value = listaOriginal;
    super.onInit();
  }

  List<Articulo> get listaFinal => listaGart.value;
  List<Articulo> get listaGCompras => listaComp.value;
  int get totalArticulo => compras.value;

  comprar(String op, int i) {
    if (op == "+") {
      if (compras.value < listaGart.value[i].existencias) {
        compras.value++;
        listaComp.value.add(listaGart.value[i]);
        print(compras.value);
      }
    } else {
      compras.value--;
    }
  }

  actualizarCompra(int i) {
    compras.value--;
    listaComp.value.removeAt(i);
    listaComp.refresh();
  }
}
