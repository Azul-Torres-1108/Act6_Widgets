import 'package:flutter/material.dart';

//! AnimatedRotation

class Pantalla8 extends StatefulWidget {
  const Pantalla8({Key? key}) : super(key: key);

  @override
  State<Pantalla8> createState() => Pantalla8State();
}

class Pantalla8State extends State<Pantalla8> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedRotation'),
        centerTitle: true,
        backgroundColor: Color(0xffa3fff4),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Animación de rotación')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: AnimatedRotation(
                turns: turns,
                duration: const Duration(seconds: 1),
                child: const FlutterLogo(
                  size: 100,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text("Rotate Logo"),
              onPressed: () {
                setState(() => turns += 1 / 4);
              },
            ),
          ],
        ),
      ),
    );
  }
}
