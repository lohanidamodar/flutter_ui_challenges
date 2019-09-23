import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_ui_challenges/core/data/firestore_service.dart';

class FavoriteFirestoreService {
  static final FavoriteFirestoreService _firestoreService  = FavoriteFirestoreService._internal();

  factory FavoriteFirestoreService() {
    return _firestoreService;
  }

  FavoriteFirestoreService._internal();

  Future<void> addToFavorite(String id, String key) async {
      return FirestoreService().updateDocument('users', id, {
        'favorites': FieldValue.arrayUnion([key])
      });
  }
  Future<void> removeFromFavorite(String id, String key) async {
      return FirestoreService().updateDocument('users', id, {
        'favorites': FieldValue.arrayRemove([key])
      });
  }
}