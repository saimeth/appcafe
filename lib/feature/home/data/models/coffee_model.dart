class CoffeeService {
  final String? nombre;
  final int? precio;
  final String? imagen;

  const CoffeeService({
    required this.nombre,
    required this.precio,
    required this.imagen,
  });

  factory CoffeeService.fromJson(Map<String, dynamic> json) {
    return CoffeeService(
      nombre: json['nombre'],
      precio: json['precio'],
      imagen: json['imagen'],
    );
  }
}
