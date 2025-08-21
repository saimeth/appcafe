import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mi_app/feature/home/data/models/coffee_model.dart';


class CoffeeService {
  final String url;

  CoffeeService({required this.url});

  
  Future<List<Coffee>> fetchCoffees() async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((e) => Coffee.fromJson(e)).toList();
      } else {
        throw Exception("Error al cargar cafés: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }

  
  Future<List<Coffee>> updateCoffees() async {
    final coffees = await fetchCoffees();
    coffees.shuffle();
    return coffees;
  }
}
