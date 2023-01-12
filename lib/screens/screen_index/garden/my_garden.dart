import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:developer';

import 'my_garden_func.dart';
import '../garden_detail/my_garden_detail.dart';

class MyGarden extends StatefulWidget {
  const MyGarden({super.key});

  @override
  State<MyGarden> createState() => MyGardenState();
}

class MyGardenState extends State<MyGarden> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('나의 정원'),
        backgroundColor: Color(0xff151816),
        toolbarHeight: 50,
        /*
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          tooltip: 'Navigation menu',
          onPressed: () => Navigator.of(context).pop(),
          padding: const EdgeInsets.all(0),
        ),
        */
      ),
      body: Column(
        children: [
          gardenSearch(),
          gardenGridView(context),
          Container(
            margin: const EdgeInsets.only(bottom: 70), // bottomNavBar 의 height 를 갖다 써야 한다.
            //child: const Text('TEST1111111', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
  
      extendBody: true,
      bottomNavigationBar: bottomNavBar(context, 1),
    );
  }
}

