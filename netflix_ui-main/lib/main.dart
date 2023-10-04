import 'package:flutter/material.dart';
import 'package:splash/view/home_screen/spash.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatefulWidget {
  const myapp({super.key});

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: splashscreen());
  }
}
