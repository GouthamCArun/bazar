import 'package:cloud_firestore/cloud_firestore.dart';

class GetDataBase {
  FirebaseFirestore db = FirebaseFirestore.instance;

  listProducts() async {
    return db
        .collection('Sellers')
        .where('Saree_present', isEqualTo: true)
        .snapshots();
  }
}
