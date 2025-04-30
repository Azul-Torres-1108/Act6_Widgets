import 'package:flutter/material.dart';

//! AnimatedPadding

class Pantalla5 extends StatefulWidget {
  const Pantalla5({Key? key}) : super(key: key);

  @override
  State<Pantalla5> createState() => _Pantalla5State();
}

class _Pantalla5State extends State<Pantalla5> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPadding'),
        centerTitle: true,
        backgroundColor: Color(0xffb0fff1), // Color pastel
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Anima el padding del contenedor')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text("Change padding"),
              onPressed: () {
                setState(() {
                  padValue = padValue == 0.0 ? 100.0 : 0.0;
                });
              },
            ),
            const SizedBox(height: 10),
            Text("Padding = $padValue"),
            const SizedBox(height: 10),
            AnimatedPadding(
              padding: EdgeInsets.all(padValue),
              duration: const Duration(seconds: 2),
              curve: Curves.easeInOut,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
