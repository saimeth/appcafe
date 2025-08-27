import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mi_app/feature/home/data/models/coffee_model.dart';

Future<List<CoffeeService>> fetchCoffes() async {
  final Uri url=Uri.parse("http://jsonblob.com/1409970278519463936");
    
    final response = await http.get(url);

  if (response.statusCode == 200) {
    final data=jsonDecode(response.body);
    final List<dynamic> Coffe=data["coffe"];
    return Coffe.map((e) => CoffeeService.fromJson(e)).toList();
  } else {
    throw Exception("Error al cargar cafés: ${response.statusCode}");
  }
}
  
