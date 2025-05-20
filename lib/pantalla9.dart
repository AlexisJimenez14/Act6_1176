import 'package:flutter/material.dart';

class Pantalla9 extends StatefulWidget {
  const Pantalla9({Key? key}) : super(key: key);

  @override
  State<Pantalla9> createState() => _Pantalla9State();
}

class _Pantalla9State extends State<Pantalla9> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

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
          'Ejemplo AnimatedDefaultTextStyle',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: const Color(0xffed722b),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 40),
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 120,
                    child: AnimatedDefaultTextStyle(
                      duration: const Duration(milliseconds: 300),
                      style: TextStyle(
                        fontSize: _fontSize, // ✅ Aquí se usa la variable
                        color: _color, // ✅ Aquí también
                        fontWeight: FontWeight.bold,
                      ),
                      child: const Text('Flutter'),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _fontSize = _first ? 90 : 60;
                        _color = _first ? Colors.blue : Colors.red;
                        _first = !_first;
                      });
                    },
                    child: const Text("Cambiar Estilo"),
                  )
                ],
              ),
            ),
          ),
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
