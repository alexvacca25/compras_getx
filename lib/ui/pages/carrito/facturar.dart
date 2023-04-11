import 'package:compras_getx/domain/controller/gestionarticulo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Facturacion extends StatelessWidget {
  const Facturacion({super.key});

  @override
  Widget build(BuildContext context) {
    ComprasController controlc = Get.find();
    return Scaffold(
        appBar: AppBar(title: const Text("Facturacion")),
        body: Obx(
          () => ListView.builder(
              itemCount: controlc.listaGCompras.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(controlc.listaGCompras[index].foto),
                  ),
                  title: Text(controlc.listaGCompras[index].detalle),
                  subtitle: Text(controlc.listaGCompras[index].codigo),
                  trailing: IconButton(
                      onPressed: () {
                        controlc.actualizarCompra(index);
                      },
                      icon: const Icon(Icons.delete)),
                );
              }),
        ));
  }
}
