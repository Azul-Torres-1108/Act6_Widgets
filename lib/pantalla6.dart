import 'package:flutter/material.dart';

// ! AnimatedPhysicalModel

class Pantalla6 extends StatefulWidget {
  const Pantalla6({Key? key}) : super(key: key);

  @override
  _Pantalla6State createState() => _Pantalla6State();
}

class _Pantalla6State extends State<Pantalla6> {
  bool _isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPhysicalModel'),
        centerTitle: true,
        backgroundColor: Color(0xffc9b2df),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Animación con PhysicalModel')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPhysicalModel(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
              elevation: _isFlat ? 0 : 6.0,
              shape: BoxShape.rectangle,
              shadowColor: Colors.black,
              color: Colors.white,
              child: const SizedBox(
                height: 120.0,
                width: 120.0,
                child: Icon(Icons.android_outlined),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text("Click"),
              onPressed: () {
                setState(() {
                  _isFlat = !_isFlat;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
