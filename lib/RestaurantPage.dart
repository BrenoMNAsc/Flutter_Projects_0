import 'dart:ui';

import 'package:flutter/material.dart';
import 'FuncAux.dart';
import 'Components.dart';
import 'Restaurant.dart';

class RestaurantPage extends StatefulWidget {
  Restaurant rest;
  RestaurantPage({super.key, required this.rest});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  String dropDownValue = "Ordenar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))
        ],
        title: Center(
            child: const Text("Cariri Delivery",
                style: TextStyle(
                  color: Color.fromRGBO(5, 31, 50, 1),
                  fontFamily: 'Inter',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ))),
        elevation: 0,
        backgroundColor: const Color.fromRGBO(255, 227, 125, 1),
      ),
      body: Column(children: [
        Stack(children: [
          Image(
            image: AssetImage('assets/images/fundoRestaurant.png',
            
          )),

        ])
      ]),
    );
  }
}
