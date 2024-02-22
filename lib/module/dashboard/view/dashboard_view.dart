import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/__exercise/technical_test.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;
    var test = TechnicalTest();
    controller.point = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          ValueListenableBuilder(
            valueListenable: controller.pointValue,
            builder: (context, child, value) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Scores: ${controller.pointValue.value}",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: controller.scrollController,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H5(title: "Technical test"),
              Text(
                "Buka file dan kerjakan sesuai intruksi didalamnya",
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              Text(
                "lib/module/__exercise/techical_test.dart",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
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
                  if (correct) {
                    controller.point++;
                  }
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
