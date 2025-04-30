import 'package:flutter/material.dart';

// ! AnimatedSize

class Pantalla9 extends StatefulWidget {
  const Pantalla9({Key? key}) : super(key: key);

  @override
  State<Pantalla9> createState() => _Pantalla9State();
}

class _Pantalla9State extends State<Pantalla9> with TickerProviderStateMixin {
  double _size = 300;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedSize'),
        centerTitle: true,
        backgroundColor: const Color(0xffc9b2df),
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                    content: Text('Toca el logo para cambiar tamaño')),
              );
            },
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            _size = _size == 300 ? 100 : 300;
          });
        },
        child: Container(
          color: Colors.white,
          child: Center(
            child: AnimatedSize(
              duration: const Duration(seconds: 1),
              curve: Curves.easeIn,
              child: FlutterLogo(size: _size),
            ),
          ),
        ),
      ),
    );
  }
}
