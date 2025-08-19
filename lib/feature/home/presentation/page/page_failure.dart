import 'package:flutter/material.dart';
class View_failure extends StatelessWidget {
  const View_failure({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 224, 224),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error, color: const Color.fromARGB(255, 252, 253, 253), size: 80),
            const SizedBox(height: 20),
            Text("𝙇𝙤 𝙨𝙚𝙣𝙩𝙞𝙢𝙤𝙨, 𝙝𝙪𝙗𝙤 𝙪𝙣 𝙚𝙧𝙧𝙤𝙧",
              style: TextStyle(fontSize: 18, 
              color: Colors.white),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 252, 253, 253),
                foregroundColor: const Color.fromARGB(255, 150, 145, 145),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text("𝙍𝙚𝙞𝙣𝙩𝙚𝙣𝙩𝙖𝙧"),
            ),
          ],
        ),
      ),
    );
  }
}