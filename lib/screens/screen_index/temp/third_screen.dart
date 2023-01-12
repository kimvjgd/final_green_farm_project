import 'package:final_smart_farm/screens/screen_index/market/market_func.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child:
          Image(
            image: AssetImage('assets/images/Map2.png'),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height, //status bar + appbar + bottom appbar = 130 (height)
            fit: BoxFit.fill,
          ),
        ),
        marketSearchOnly(),
        marketItems(90, 190),
      ],
    );
  }
}
