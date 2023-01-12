import 'package:final_smart_farm/controller/numerical_data_controller.dart';
import 'package:final_smart_farm/data/repository/firebase_setting_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

import 'my_garden_detail_func.dart';

class MyGardenDetail extends StatefulWidget {


  MyGardenDetail({super.key});

  @override
  State<MyGardenDetail> createState() => MyGardenDetailState();
}

class MyGardenDetailState extends State<MyGardenDetail> {

  NumericalDataController _controller = Get.put(NumericalDataController());

  double scrHeight = 0;
  double scrWidth = 0;

  void getScreenSize() {
    log("Screen height : ${MediaQuery.of(context).size.height}");
    log("Screen width : ${MediaQuery.of(context).size.width}");

    scrHeight = MediaQuery.of(context).size.height;
    scrWidth = MediaQuery.of(context).size.width;
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance
        .addPostFrameCallback((_) => getScreenSize());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('나의 정원 상세'),
        backgroundColor: Color(0xff151816),
        toolbarHeight: 50,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          tooltip: 'Navigation menu',
          onPressed: () => Navigator.of(context).pop(),
          padding: const EdgeInsets.all(0),
        ),
      ),
      // body: FutureBuilder(
      //     future: FirebaseSettingRepository().fApp,
      //     builder: (context, snapshot) {
      //       if (snapshot.hasError) {
      //         return Text('something wrong with firebase');
      //       } else if (snapshot.hasData) {
      //         return content();
      //       } else {
      //         return CircularProgressIndicator();
      //       }
      //     }),
      body: FutureBuilder(
        future: FirebaseSettingRepository().fApp,
        builder: (context, snapshot) {
          if(snapshot.hasError) {
            return Text("Something wrong with server");
          }else if (snapshot.hasData){
            return Stack(
              children: [
                Container(
                  color: const Color(0xff1C201D),
                ),
                ListView(
                  children: [
                    pictures(),
                    comments(),
                    chart(MediaQuery.of(context).size.width), //chart(scrWidth),
                    chartTitle(),
                    lightTime(),
                    temperature(),
                    content(),
                    progressBar(MediaQuery.of(context).size.width),
                  ],
                ),
              ],
            );

          }else {
            return CircularProgressIndicator();
          }
        }
      ),
    );
  }
  Widget content() {

    _controller.getNumericalData();
    return Obx(()=>Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("illu : ${_controller.illu} \nhumidity : ${_controller.humidity} \ntemperature : ${_controller.temperature}",style: TextStyle(color: Colors.white),),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }

}