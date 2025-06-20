import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:koshiba_agent_app/core/themes/app_env.dart';

class FirestoreUtil {
  static FirebaseFirestore get _firestore => FirebaseFirestore.instanceFor(
    app: Firebase.app(),
    databaseId: AppEnv.databaseId,
  );
  static CollectionReference<Map<String, dynamic>> collectionFromEnum(
    CollectionEnum collectionEnum,
  ) => _firestore.collection(collectionEnum.name);
}

enum CollectionEnum { accounts, transcription }
