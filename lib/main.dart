import 'package:flutter/material.dart';
import 'package:mi_app/feature/home/data/models/coffee_model.dart';

void main(){

}
class MyApp extends StatelessWidget{
  final List<CoffeeService>?coffe;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 224, 224),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: const Text("𝒞𝒶𝒻𝑒𝑀𝒶𝓍",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            final CoffeeService c = data[index];
            return ListTile(
              title: Text("${c.nombre}"),
              subtitle: Text("\$${c.precio}"),
            );
          }
        ),
      ),
    );
  }
}