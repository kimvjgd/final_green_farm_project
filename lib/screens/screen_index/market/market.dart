import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';

import '../garden/my_garden_func.dart';
import 'market_func.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => MarketState();
}

class MarketState extends State<Market> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('마을장터'),
        backgroundColor: Color(0xff151816),
        toolbarHeight: 50,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          tooltip: 'Navigation menu',
          onPressed: () => Navigator.of(context).pop(),
          padding: const EdgeInsets.all(0),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child:
              Image(
                image: AssetImage('assets/images/Map2.png'),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 130, //status bar + appbar + bottom appbar = 130 (height)
                fit: BoxFit.fill,
              ),
          ),
          marketSearchOnly(),
          marketItems(90, 190),
        ],
      ),
  
      extendBody: true,
      bottomNavigationBar: bottomNavBar(context, 3),
    );
  }
}