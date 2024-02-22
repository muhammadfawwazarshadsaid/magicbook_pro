import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/__exercise/technical_test.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    var test = TechnicalTest();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [],
      ),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 5,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),
                itemCount: test.list.length,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = test.list[index];
                  var number = index + 1;
                  bool correct = item() == true;
                  return Container(
                    color: correct ? primaryColor : disabledColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${number}",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: correct ? Colors.white : null,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
