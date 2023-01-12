import 'package:firebase_database/firebase_database.dart';

class FirebaseDataRepository {
  static final FirebaseDataRepository _firebaseDataRepository =
      FirebaseDataRepository._internal();

  factory FirebaseDataRepository() => _firebaseDataRepository;

  FirebaseDataRepository._internal();

  DatabaseReference getDatabaseRef() {
    DatabaseReference _ref = FirebaseDatabase.instance.ref();
    return _ref;

  }


}
