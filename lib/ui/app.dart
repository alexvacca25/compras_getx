import 'package:compras_getx/ui/auth/login.dart';
import 'package:compras_getx/ui/pages/carrito/add.dart';
import 'package:compras_getx/ui/pages/carrito/list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestion de Estado',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const ListaArticulos(),
      routes: {
        "/auth": (context) => const Login(),
        "/listaArt": (context) => const ListaArticulos(),
        "/add": (context) => const AddArticulo()
      },
    );
  }
}
