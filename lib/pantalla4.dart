import 'package:flutter/material.dart';

// ! AnimatedOpacity

class Pantalla4 extends StatefulWidget {
  const Pantalla4({Key? key}) : super(key: key);

  @override
  State<Pantalla4> createState() => Pantalla4State();
}

class Pantalla4State extends State<Pantalla4> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity'),
        centerTitle: true,
        backgroundColor: Color(0xffc9b2df), // Color pastel
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Anima el logo con el botón')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 2),
              child: const FlutterLogo(size: 100),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Fade logo"),
              onPressed: () {
                setState(() {
                  opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
