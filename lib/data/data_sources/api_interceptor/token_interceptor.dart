import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

class TokenInterceptor extends Interceptor {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final idToken = await _firebaseAuth.currentUser?.getIdToken();
    if (idToken != null) {
      options.headers['Authorization'] = 'Bearer $idToken';
    }
    super.onRequest(options, handler);
  }
}
