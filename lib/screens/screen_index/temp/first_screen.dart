import 'package:final_smart_farm/controller/numerical_data_controller.dart';
import 'package:final_smart_farm/screens/screen_index/garden/my_garden_func.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstScreen extends GetView<NumericalDataController> {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("나의 정원")),
      ),
      body: Column(
        children: [
          gardenSearch(),
          gardenGridView(context),
        ],
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
    );
  }
  Widget content() {
    controller.getNumericalData();
    return Obx(()=>Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          gardenSearch(),
          Text("illu : ${controller.illu} \nhumidity : ${controller.humidity} \ntemperature : ${controller.temperature}"),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }

}
