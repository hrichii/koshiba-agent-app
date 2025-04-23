import 'package:cloud_firestore/cloud_firestore.dart';

extension FirestoreExtensions on FirebaseFirestore {
  /// Get a collection reference with the specified path.
  CollectionReference<Map<String, dynamic>> collectionFromEnum(
    CollectionEnum collectionEnum,
  ) =>
      collection(collectionEnum.name);
}

enum CollectionEnum {
  accounts,
}
