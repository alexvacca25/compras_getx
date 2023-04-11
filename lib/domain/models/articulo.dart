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
      "https://www.eltiempo.com/files/article_content/files/crop/uploads/2020/02/03/5e38409f1bcb0.r_1580745285279.168-0-1128-720.jpeg",
  "existencias": 4,
  "vrUnitario": 849900.0
};
Map<String, dynamic> art1 = {
  "codigo": "IPHONE-PLU:3191550",
  "detalle": "Celular Iphone Redmi Note 11 128 GB Gris",
  "foto":
      "https://www.eltiempo.com/files/article_content/files/crop/uploads/2020/02/03/5e38409f1bcb0.r_1580745285279.168-0-1128-720.jpeg",
  "existencias": 2,
  "vrUnitario": 100900.0
};

List<Articulo> listaOriginal = [
  Articulo.crear(art),
  Articulo.crear(art1),
  Articulo.crear(art),
  Articulo.crear(art1),
  Articulo.crear(art),
  Articulo.crear(art1),
];
