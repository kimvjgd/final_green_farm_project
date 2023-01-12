import 'package:firebase_core/firebase_core.dart';

class FirebaseSettingRepository {
  final Future<FirebaseApp> fApp = Firebase.initializeApp();

}