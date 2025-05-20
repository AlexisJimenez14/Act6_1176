import 'package:flutter/material.dart';

class Pantalla8 extends StatefulWidget {
  const Pantalla8({Key? key}) : super(key: key);

  @override
  State<Pantalla8> createState() => _Pantalla8State();
}

class _Pantalla8State extends State<Pantalla8> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Ejemplo AnimatedCrossFade',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Color(0xffed722b),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Cambiar Imagen',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.asset(
              'assets/icon/azul.jpg',
              width: double.infinity,
            ),
            secondChild: Image.asset(
              'assets/icon/oceano.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
