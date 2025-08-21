import 'package:flutter/material.dart';
class Success_repuesto extends StatelessWidget {
  const Success_repuesto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 240, 224, 224),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text("𝒞𝒶𝒻𝑒𝑀𝒶𝓍",
        style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Center(
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [  
              const SizedBox(width: 30),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/latte_matcha.jpeg",
                    height: 250,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text("Irish Coffee",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const Text("\$15.000",
                      style: TextStyle(color: Colors.white70)),
                ],
              ),
    
    
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/latte_matcha.jpeg",
                    height: 250,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text("Latte Matcha",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const Text("\$18.000",
                      style: TextStyle(color: Colors.white70)),
                ],
              ),
    
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/cappuccino.jpg",
                    height: 250,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text("Cappuccino",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const Text("\$12.000",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
    
    
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/macchiato.jpg",
                    height: 250,
                    width: 180,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text("Macchiato",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  const Text("\$14.000",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
    
    
              const SizedBox(width: 20),
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {} ,
                child: const Text('Actualizar'),
              )
            ],
          ),
        ),
      ),
      )
    );
  }
}