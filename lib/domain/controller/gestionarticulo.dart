import 'package:compras_getx/domain/models/articulo.dart';
import 'package:get/get.dart';

class ComprasController extends GetxController {
  Rx<List<Articulo>> listaGart = Rx<List<Articulo>>([]);
  @override
  void onInit() {
    // TODO: implement onInit
    listaGart.value = listaOriginal;
    super.onInit();
  }

  List<Articulo> get listaFinal => listaGart.value;



}
