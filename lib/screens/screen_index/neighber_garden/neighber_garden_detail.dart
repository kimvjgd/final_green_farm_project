import 'package:final_smart_farm/screens/screen_index/neighber_garden/neighber_garden_detail_func.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../garden/my_garden_func.dart';

class NeighberGardenDetail extends StatefulWidget {
  const NeighberGardenDetail({super.key});

  @override
  State<NeighberGardenDetail> createState() => NeighberGardenDetailState();
}

class NeighberGardenDetailState extends State<NeighberGardenDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('이웃 정원 상세'),
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
            child: Image(
              image: AssetImage('assets/images/StroberryGardenBack.png'),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 130,
              fit: BoxFit.fill,
            ),
          ),
          emailSend(),
          welcomeTitle(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: bottomNavBar(context, 2),
    );
  }
}
