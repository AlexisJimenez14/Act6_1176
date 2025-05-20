import 'package:esquivel1176/Pantalla5.dart';
import 'package:esquivel1176/Pantalla7.dart';
import 'package:esquivel1176/menu.dart';
import 'package:esquivel1176/pagina6.dart';
import 'package:esquivel1176/pantalla1.dart';
import 'package:esquivel1176/pantalla10.dart';
import 'package:esquivel1176/pantalla2.dart';
import 'package:esquivel1176/pantalla3.dart';
import 'package:esquivel1176/pantalla4.dart';
import 'package:esquivel1176/pantalla8.dart';
import 'package:esquivel1176/pantalla9.dart';
import 'package:flutter/material.dart';

void main() => runApp(Widgets());

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const Menu(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla1': (context) => const Pantalla1(),
        '/pantalla2': (context) => const Pantalla2(),
        '/pantalla3': (context) => const Pantalla3(),
        '/pantalla4': (context) => const Pantalla4(),
        '/pantalla5': (context) => const Pantalla5(),
        '/pantalla6': (context) => const Pantalla6(),
        '/pantalla7': (context) => const Pantalla7(),
        '/pantalla8': (context) => const Pantalla8(),
        '/pantalla9': (context) => const Pantalla9(),
        '/pantalla10': (context) => const Pantalla11(),
      },
    );
  }
}
