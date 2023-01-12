import 'package:final_smart_farm/screens/screen_index/market/market_func.dart';
import 'package:final_smart_farm/screens/screen_index/neighber_garden/neighber_garden_func.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이웃 정원'),
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
              image: AssetImage('assets/images/NeighberGardenBack.png'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 130, //status bar + appbar + bottom appbar = 130 (height)
              fit: BoxFit.fill,
            ),
          ),
          marketSearchOnly(),
          gardenItems(context, 100, 200),
        ],
      ),

      extendBody: true,
    );
  }
}
