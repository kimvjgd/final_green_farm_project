import 'package:flutter/material.dart';
import 'dart:developer';

import 'neighber_garden_detail.dart';

Widget gardenItems(BuildContext context, double left, double top) {
  return Positioned(
    left: left,
    top: top,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NeighberGardenDetail()),
        );
      },
      child: Container(
        child: Image.asset('assets/images/StroberryGarden.png', scale: 3.0,),
      ),
    ), 
  );
}