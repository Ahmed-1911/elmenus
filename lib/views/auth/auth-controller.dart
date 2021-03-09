import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  var user = ''.obs;

  Future<void> _authenticate(
      String email, String password, String segment) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:$segment?key=AIzaSyArkAhV-tyPNZQL0pPqydK2NOZaAPFrLnA';
    try {
      final res = await http.post(url,
          body: json.encode({
            'email': email.trim(),
            'password': password,
            'returnSecureToken': true
          }));
      final resData=json.decode(res.body);
      if(resData['error']!=null)
        throw '${resData['error']['message']}';
    } catch (e) {
      throw e;
    }
  }

  Future<void> signUp(String email, String password) {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> logIn(String email, String password) {
    return _authenticate(email, password, 'signInWithPassword');
  }
}
