import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/db_service/db_service.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              child: Column(
                children: [
                  Builder(builder: (context) {
                    double size = 52.0;
                    return InkWell(
                      onTap: () {},
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: primaryColor,
                            radius: size,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: size - 2,
                              child: CircleAvatar(
                                radius: size - 4,
                                backgroundImage: const NetworkImage(
                                  "https://i.ibb.co/S32HNjD/no-image.jpg",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Member",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    DBService.get("email") ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            HS6(title: "DANGER ZONE"),
            ListItem(
              prefixIcon: MdiIcons.accountRemoveOutline,
              label: "Delete Account",
              onTap: () {},
            ),
            ListItem(
              prefixIcon: MdiIcons.logout,
              label: "Logout",
              onTap: () => controller.logout(),
            ),
            const SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
