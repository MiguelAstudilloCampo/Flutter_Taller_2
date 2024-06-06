import 'package:flutter/material.dart';
import 'package:taller2/Interfaces/Home.dart';
import 'package:taller2/Interfaces/Login.dart';
import 'package:taller2/Interfaces/imagenesDeslizantes.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicación de usuario",
      // home: HomePrincipal(),
      // home: imagenesDeslizantes(),
      home: Login(),
    );
  }
}
