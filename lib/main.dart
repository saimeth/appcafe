import 'package:flutter/material.dart';
import 'package:mi_app/feature/home/presentation/page/page_failure.dart';
import 'package:mi_app/feature/home/presentation/principal/views_initial.dart';
import 'package:mi_app/feature/home/presentation/views/views_loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:  const Color.fromARGB(255, 240, 224, 224),
        appBar: AppBar(
          backgroundColor: Colors.brown,
          centerTitle: true,
          title: const Text("𝒞𝒶𝒻𝑒𝑀𝒶𝓍",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.brown, 
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      )
      ),
    );
  }
}