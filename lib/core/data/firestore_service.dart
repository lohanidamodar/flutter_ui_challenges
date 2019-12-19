import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static final FirestoreService _firestoreService  = FirestoreService._internal();
  Firestore _db = Firestore.instance;

  factory FirestoreService() {
    return _firestoreService;
  }

  FirestoreService._internal();

  Stream<QuerySnapshot> getDocumentSnapshots(String path) {
    return _db
      .collection(path)
      .snapshots();
  }

  Stream<DocumentSnapshot> getDocument(String path,String id) {
    return _db
      .collection(path)
      .document(id)
      .snapshots();
  }

  Future<DocumentSnapshot> getDocumentAsync(String path, String id) {
    return _db
      .collection(path)
      .document(id)
      .get();
  }

  Future<void> updateDocument(String path, String id, Map<String,dynamic> data,{bool merge = true}) {
    return _db
      .collection(path)
      .document(id)
      .setData(data,merge: merge);
  }

}