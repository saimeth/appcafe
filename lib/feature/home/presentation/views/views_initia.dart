import 'package:flutter/material.dart';
class View_initial extends StatelessWidget {
  const View_initial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 224, 224),
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text(
          "𝒞𝒶𝒻𝑒𝑀𝒶𝓍",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset("assets/imagenPrincipal.jpeg",
                height: 250,
              ),
              const SizedBox(height: 30),
              const Text(
                "¡𝙱𝚒𝚎𝚗𝚟𝚎𝚗𝚒𝚍𝚘 𝚊 𝙲𝚊𝚏𝚎𝙼𝚊𝚡!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: const Text('𝙄𝙣𝙜𝙧𝙚𝙨𝙖𝙧'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}