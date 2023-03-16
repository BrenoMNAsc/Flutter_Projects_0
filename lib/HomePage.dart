import 'dart:ui';

import 'package:flutter/material.dart';
import 'FuncAux.dart';
import 'Components.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropDownValue = "Ordenar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Cariri Delivery",
              style: TextStyle(
                color: Color.fromRGBO(5, 31, 50, 1),
                fontFamily: 'Inter',
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          elevation: 0,
          backgroundColor: const Color.fromRGBO(255, 227, 125, 1),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          SearchBar(),
          HomeCarroussel(),
          HomeCarrousselCategories(),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Últimas lojas",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromRGBO(5, 31, 50, 1),
                fontFamily: 'Inter',
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          HomeCarrousselRestaurants()
        ]));
  }
}
