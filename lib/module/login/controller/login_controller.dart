import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";
  login() async {
    try {
      await AuthService().login(
        email: email,
        password: password,
      );
      Get.offAll(MainNavigationView());
    } on Exception catch (err) {
      printr(err.toString());
      se("Login failed");
    }
  }
}
