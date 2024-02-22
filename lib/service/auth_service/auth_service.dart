import 'package:dio/dio.dart';
import 'package:hyper_ui/core.dart';

class AuthService {
  Future<void> login({
    required String email,
    required String password,
  }) async {
    //-----------
    try {
      var data = {
        "email": email,
        "password": password,
      };
      printg(data.toString());

      var url = "http://localhost:8000/api/mobile/login";
// var url =  "https://9code.id/api/mobile/login";

      printg(url);
      var response = await Dio().post(
        url,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: data,
      );
      printr(response.toString());
    } on Exception catch (err) {
      print(err);
      throw Exception(err);
    }
  }
}
