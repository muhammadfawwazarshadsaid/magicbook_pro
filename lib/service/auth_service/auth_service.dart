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
      // var url = "http://localhost:8000/api/mobile/login";
      var url = "https://9code.id/api/mobile/login";

      await Dio().post(
        url,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: data,
      );
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> updatePoint({
    required String email,
    required String password,
    required int point,
  }) async {
    //-----------
    try {
      var data = {
        "email": email,
        "password": password,
        "point": point,
      };

      var url = "https://9code.id/api/mobile/update";
      // var url = "http://localhost:8000/api/mobile/update";
      var res = await Dio().post(
        url,
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: data,
      );
      printo(res.toString());
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
