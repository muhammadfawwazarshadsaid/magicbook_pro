import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/db_service/db_service.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      MdiIcons.devices,
                      size: 64.0,
                      color: Color(0xff263238),
                    ),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MagicBook Pro",
                        style: GoogleFonts.blackOpsOne(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        transform: Matrix4.translationValues(0.0, -10, 0),
                        child: Text(
                          "Latihan coding",
                          style: GoogleFonts.blackOpsOne(
                            fontSize: 16.0,
                            color: Color(0xff263238),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            QTextField(
              label: "Email",
              validator: Validator.email,
              suffixIcon: Icons.email,
              value: controller.email,
              onChanged: (value) {
                controller.email = value;
                DBService.set("email", value);
              },
            ),
            QTextField(
              label: "Password",
              obscure: true,
              validator: Validator.required,
              suffixIcon: Icons.password,
              value: controller.password,
              onChanged: (value) {
                controller.password = value;
                DBService.set("password", value);
              },
            ),
            QButton(
              label: "Login",
              onPressed: () => controller.login(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
