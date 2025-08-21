class Coffee {
  final String nombre;
  final int precio;
  final String imagen;

  Coffee({
    required this.nombre,
    required this.precio,
    required this.imagen,
  });

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      nombre: json['nombre'],
      precio: json['precio'],
      imagen: json['imagen'],
    );
  }
}
