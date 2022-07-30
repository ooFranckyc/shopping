import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/drawer.dart';

class ProfileFragment extends StatefulWidget {
  const ProfileFragment({Key? key}) : super(key: key);

  @override
  State<ProfileFragment> createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 1));
    scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState?.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
              size: 28,
            )),
        centerTitle: true,
        title: Text(
          "Profile".toUpperCase(),
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                var dial = AlertDialog(
                  backgroundColor: Colors.white,
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              "ooShopping",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 23,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: 45,
                              height: 5,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "copyright My Learning Flutter, this app has designed by :",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: 14.6),
                      ),
                      Row(
                        children: const [
                          Text(
                            "Arun PP :",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14.6),
                          ),
                          Text(
                            " From Drible website",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: 14.6),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: const [
                          Text(
                            "Link profile: ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14.6),
                          ),
                          Text(
                            "https://dribbble.com/arunvenupp",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w400,
                                color: Colors.deepOrange,
                                fontSize: 14.6),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "Okay",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50))),
                );
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return dial;
                    });
              },
              icon: const Icon(
                CupertinoIcons.arrow_turn_right_up,
                color: Colors.black,
                size: 28,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: DrawerInterface(scaffoldKey: scaffoldKey),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(color: Colors.grey, height: 1),
              const SizedBox(height: 25),
              profileInfo(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      listSettingProfile(
                          Icons.location_on_outlined,
                          "Manage you address",
                          "You can manage you address here"),
                      const SizedBox(height: 30),
                      listSettingProfile(CupertinoIcons.hexagon, "My Order",
                          "View all you order history"),
                      const SizedBox(height: 30),
                      listSettingProfile(Icons.help_outline_sharp,
                          "Help Center", "For app and order related queris"),
                      const SizedBox(height: 30),
                      listSettingProfile(Icons.credit_card, "Paiement details",
                          "Manage you paiement informations"),
                      const SizedBox(height: 30),
                      listSettingProfile(
                          CupertinoIcons.bell_fill,
                          "Notifications Settings",
                          "Manage you notifications prefrences"),
                      const SizedBox(height: 30),
                      listSettingProfile(Icons.rotate_left_sharp,
                          "Rater and Ear", "Reafer someone to earn points"),
                      const SizedBox(height: 30),
                      listSettingProfile(Icons.compost_rounded, "Coupon Code",
                          "Explore lasted coupon avaible for you"),
                    ]),
              )
            ],
          )),
    );
  }

  Widget profileInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: SizedBox(
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Container(
            width: 65,
            height: 65,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/profile.jpg'))),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Franck Mekoulou",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "ed.franckmekoulou@outlook.com",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ]),
      ),
    );
  }

  Widget listSettingProfile(IconData icon, String title, String subTitle) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: const Color(0xff7FBA75)),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            const SizedBox(height: 3),
            Text(subTitle,
                style: const TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.w400)),
          ],
        )
      ],
    );
  }
}
