import 'package:flutter/material.dart';
class View_loading extends StatelessWidget {
  const View_loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 224, 224),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 20,),
            Text("𝘾𝙖𝙧𝙜𝙖𝙣𝙙𝙤...",
              style: TextStyle(fontSize: 30,
              color: Colors.brown),
            ),
          ],
        ),
      )
    );
  }
}
