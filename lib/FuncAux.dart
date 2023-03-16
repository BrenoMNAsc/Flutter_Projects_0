import 'package:flutter/material.dart';

String TopNavBarBuilder(int index) {
  switch (index) {
    case 0:
      return "Ordenar";
    case 1:
      return "Pra entrega";
    case 2:
      return "Entrega gratis";
    default:
      return "";
  }
}

EdgeInsetsGeometry PaddingTopNavBarBuilder(int index) {
  if (index < 3) {
    return EdgeInsets.all(8);
  } else {
    return EdgeInsets.zero;
  }
}

Widget? BuildCards(int index) {
  var img = Image.asset("");
  switch (index) {
    case 0:
      img = Image.asset('assets/images/ImgFoodCards1.png');
      break;
    case 1:
      img = Image.asset('assets/images/ImgFoodCards2.png');
      break;
    case 2:
      img = Image.asset('assets/images/ImgFoodCards3.png');
      break;
    default:
      img = Image.asset("");
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: img,
      );
  }
}
