import 'package:cloud_firestore/cloud_firestore.dart';

class GetDataBase {
  FirebaseFirestore db = FirebaseFirestore.instance;

  listProducts() async {
    return db
        .collection('Sellers')
        .where('Saree_present', isEqualTo: true)
        .snapshots();
  }

  updateBuy(userId, old,url) {
    final docUser = db.collection('Sellers').doc(userId);
    docUser.update({
      'Saree': {'buy': old + 1,'url':url},
    });
  }
}
