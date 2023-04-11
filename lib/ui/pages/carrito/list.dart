import 'package:compras_getx/domain/controller/gestionarticulo.dart';
import 'package:compras_getx/ui/pages/carrito/facturar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:badges/badges.dart' as badges;

class ListaArticulos extends StatefulWidget {
  const ListaArticulos({super.key});

  @override
  State<ListaArticulos> createState() => _ListaArticulosState();
}

class _ListaArticulosState extends State<ListaArticulos> {
  ComprasController controlc = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Articulos"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: badges.Badge(
                onTap: () {
                  Get.toNamed("/facturar");
                },
                badgeContent: Obx(
                  () => Text(controlc.totalArticulo.toString()),
                ),
                child: const Icon(Icons.shopping_bag),
              ),
            )
          ],
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: controlc.listaFinal.length,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Image.network(
                        controlc.listaFinal[index].foto,
                        scale: 1,
                      ),
                    ),
                    Text(controlc.listaFinal[index].detalle),
                    Row(
                      children: [
                        Text("Disp: ${controlc.listaFinal[index].existencias}"),
                        IconButton(
                            onPressed: () {
                              controlc.comprar("+", index);
                            },
                            icon: const Icon(Icons.add_circle)),
                        IconButton(
                            onPressed: () {
                              controlc.comprar("-", index);
                            },
                            icon: const Icon(Icons.remove_circle))
                      ],
                    )
                  ]),
                ),
              );
            })));
  }
}
