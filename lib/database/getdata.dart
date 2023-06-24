import 'package:cloud_firestore/cloud_firestore.dart';

class GetDataBase {
  FirebaseFirestore db = FirebaseFirestore.instance;

  listProducts() async {
    return db
        .collection('Users')
        .where('saree')
        .orderBy('rating', descending: true)
        .snapshots();
  }
}
