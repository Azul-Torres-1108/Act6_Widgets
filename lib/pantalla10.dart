import 'package:flutter/material.dart';

//! AnimatedSwitcher

class Pantalla10 extends StatefulWidget {
  const Pantalla10({Key? key}) : super(key: key);

  @override
  State<Pantalla10> createState() => _Pantalla10State();
}

class _Pantalla10State extends State<Pantalla10> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 10'),
        centerTitle: true,
        backgroundColor: const Color(0xffeaff99), // Color pastel
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('AnimatedSwitcher')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: Text(
                "$_count",
                key: ValueKey<int>(_count),
                style: const TextStyle(fontSize: 40),
              ),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(scale: animation, child: child);
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              onPressed: () {
                setState(() {
                  _count += 1;
                });
              },
              child: const Text("Add"),
            ),
          ],
        ),
      ),
    );
  }
}
