import 'package:final_smart_farm/data/repository/firebase_data_repository.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';


class NumericalDataController extends GetxController {
  RxString illu = '0'.obs;
  RxString humidity = '0'.obs;
  RxString temperature = '0'.obs;

  void getNumericalData(){
    DatabaseReference _ref = FirebaseDataRepository().getDatabaseRef();
    _ref.onValue.listen((event) {
      print(event.snapshot.value);
      illu(event.snapshot.child('illu').value.toString());
      humidity(event.snapshot.child('humidity').value.toString());
      temperature(event.snapshot.child('temperature').value.toString());
    });
  }
}