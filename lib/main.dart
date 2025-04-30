import 'package:flutter/material.dart';
import 'pantalla1.dart';
import 'pantalla2.dart';
import 'pantalla3.dart';
import 'pantalla4.dart';
import 'pantalla5.dart';
import 'pantalla6.dart';
import 'pantalla7.dart';
import 'pantalla8.dart';
import 'pantalla9.dart';
import 'pantalla10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pantalla Única',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const InicioPage(),
    );
  }
}

class InicioPage extends StatelessWidget {
  const InicioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFB2DFDB), // Color pastel
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: const [
            Text(
              'Mederyth Azul Torres',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '22308051281108',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                for (var i = 1; i <= 10; i++) ...[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            switch (i) {
                              case 1:
                                return const Pantalla1();
                              case 2:
                                return const Pantalla2();
                              case 3:
                                return const Pantalla3();
                              case 4:
                                return const Pantalla4();
                              case 5:
                                return const Pantalla5();
                              case 6:
                                return const Pantalla6();
                              case 7:
                                return const Pantalla7();
                              case 8:
                                return const Pantalla8();
                              case 9:
                                return const Pantalla9();
                              case 10:
                                return const Pantalla10();
                              default:
                                return const Pantalla1();
                            }
                          },
                        ),
                      );
                    },
                    child: Text('Ir a Pantalla $i'),
                  ),
                  const SizedBox(height: 5),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
