import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/service/db_service/db_service.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    email = DBService.get("email") ?? "";
    password = DBService.get("password") ?? "";
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String email = "";
  String password = "";

  login() async {
    showLoading();
    try {
      await AuthService().login(
        email: email,
        password: password,
      );
      hideLoading();
      Get.offAll(MainNavigationView());
    } on Exception catch (err) {
      hideLoading();
      printr(err.toString());
      se("Login failed");
    }
  }
}
