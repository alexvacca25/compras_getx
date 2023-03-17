class Articulo {
  late String detalle;
  late String codigo;
  late int existencias;
  late double vrUnitario;
  late String foto;

  Articulo(
      {required this.codigo,
      required this.detalle,
      required this.existencias,
      required this.foto,
      required this.vrUnitario});

  factory Articulo.crear(Map<String, dynamic> jsonMap) {
    return Articulo(
        codigo: jsonMap['codigo'],
        detalle: jsonMap['detalle'],
        existencias: jsonMap['existencias'],
        foto: jsonMap['foto'],
        vrUnitario: jsonMap['vrUnitario']);
  }
}

Map<String, dynamic> art = {
  "codigo": "XIAOMI-PLU:3191550",
  "detalle": "Celular XIAOMI Redmi Note 11 128 GB Gris",
  "foto":
      "https://exitocol.vtexassets.com/arquivos/ids/16830448-800-auto?v=638139871343930000&width=800&height=auto&aspect=true",
  "existencias": 40,
  "vrUnitario": 849900.0
};

List<Articulo> listaOriginal = [
  Articulo.crear(art),
  Articulo.crear(art),
  Articulo.crear(art),
  Articulo.crear(art),
  Articulo.crear(art),
  Articulo.crear(art),
];
