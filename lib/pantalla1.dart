import 'package:flutter/material.dart';

class Pantalla1 extends StatefulWidget {
  const Pantalla1({Key? key}) : super(key: key);

  @override
  State<Pantalla1> createState() => _Pantalla1State();
}

class _Pantalla1State extends State<Pantalla1> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animación Play/Pause'),
        centerTitle: true,
        backgroundColor: const Color(0xffc9b2df), // Color pastel
        elevation: 4,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Toca el icono para animar')));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_isPlay) {
                    _controller.reverse();
                  } else {
                    _controller.forward();
                  }
                  _isPlay = !_isPlay;
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.play_pause,
                progress: _controller,
                size: 100,
                color: Colors.black, // Color negro para la animación
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
