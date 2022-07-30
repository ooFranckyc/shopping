import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Write by ooFrancky
// This file manages the navigations drawer with the design provided

class DrawerInterface extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const DrawerInterface({Key? key, required this.scaffoldKey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Drawer(
        child: Container(
            width: 300,
            decoration: const BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(top: 20, left: 5),
                    child: IconButton(
                        onPressed: () {
                          scaffoldKey.currentState!.openEndDrawer();
                        },
                        icon: const Icon(Icons.logout_rounded,
                            color: Colors.black54, size: 25)),
                  ),
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: Colors.deepOrange),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.jpg'))),
                        ),
                        const SizedBox(height: 5.0),
                        const Text("Franck Mekoulou",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        const Text("ed.franckmekoulou@gmail.com",
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w300)),
                        const SizedBox(height: 25),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            children: [
                              // Let's implement all Item List pushed by Drawer widget
                              itemListDrawer(
                                  const Icon(CupertinoIcons.home,
                                      color: Colors.black54),
                                  "Home"),
                              Divider(height: 1, color: Colors.grey[100]),
                              const SizedBox(height: 25),
                              itemListDrawer(
                                  const Icon(CupertinoIcons.person,
                                      color: Colors.black54),
                                  "My Profile"),
                              Divider(height: 1, color: Colors.grey[100]),
                              const SizedBox(height: 25),
                              itemListDrawer(
                                  const Icon(CupertinoIcons.doc_chart,
                                      color: Colors.black54),
                                  "My Data"),
                              Divider(height: 1, color: Colors.grey[100]),
                              const SizedBox(height: 25),
                              itemListDrawer(
                                  const Icon(Icons.notifications,
                                      color: Colors.black54),
                                  "Notifications"),
                              Divider(height: 1, color: Colors.grey[100]),
                              const SizedBox(height: 25),
                              itemListDrawer(
                                  const Icon(Icons.settings,
                                      color: Colors.black54),
                                  "Settings"),
                              Divider(height: 1, color: Colors.grey[100]),
                              const SizedBox(height: 25),
                              itemListDrawer(
                                  const Icon(Icons.mail, color: Colors.black54),
                                  "Contact us"),
                              Divider(height: 1, color: Colors.grey[100]),
                              const SizedBox(height: 25),
                              itemListDrawer(
                                  const Icon(
                                    Icons.info_outline,
                                    color: Colors.black54,
                                  ),
                                  "Helps"),
                              Divider(height: 1, color: Colors.grey[100]),
                              const SizedBox(height: 150),
                              const Text(
                                "(c)copyright My learning\n free open source",
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget itemListDrawer(Widget icon, String title) {
    return GestureDetector(
      onTap: () {
        scaffoldKey.currentState!.openEndDrawer();
        log("Drawer message form $title item");
      },
      child: Row(
        children: [
          icon,
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(color: Colors.black, fontSize: 20))
        ],
      ),
    );
  }
}
