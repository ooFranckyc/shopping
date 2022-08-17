import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/screens/popular_chair.dart';
import 'package:shopping/widgets/drawer.dart';
import 'package:shopping/widgets/explore_item.dart';
import 'package:shopping/widgets/popular_item.dart';

class HomeFragment extends StatefulWidget {
  static String tag = "/HomeFragment";
  const HomeFragment({Key? key}) : super(key: key);

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 1));
    scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
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
              size: 25,
            )),
        centerTitle: true,
        title: Text(
          "Discover".toUpperCase(),
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
                        "copyright Learning Flutter, this app has designed by :",
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
                                  fontSize: 17,
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
                size: 23,
              ))
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: DrawerInterface(scaffoldKey: scaffoldKey),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Divider(color: Colors.grey, height: 1),
            const SizedBox(height: 20),
            explorerTitleArg("Explore Furnitures", () {
              // Write you action code...
            }),
            const SizedBox(height: 20),
            exploreWelcomeWidgets(),
            const SizedBox(height: 50),
            explorerTitleArg("Populars Chairs", () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PopularChairs()));
            }),
            const SizedBox(height: 20),
            popularsWidget(),
            const SizedBox(height: 20),
            specialItem(),
            const SizedBox(height: 20),
            popularsWidget(),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }

  Widget specialItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Container(
          width: double.infinity,
          height: 230,
          padding: const EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
              image: const DecorationImage(
                  image: AssetImage('assets/images/home_img_bg.jpg'))),
          child: Positioned(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 100),
              Text(
                "The Perfect In Chair",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15),
              Text(
                "Selecting the right furnitures begins with asking yourself and probably other family memories, the right questions.",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ))),
    );
  }

  Widget explorerTitleArg(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title.toUpperCase(),
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            GestureDetector(
              onTap: () {
                // show all target item page
              },
              child: GestureDetector(
                onTap: onTap,
                child: Text(
                  "See All".toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xffFF7035),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget exploreWelcomeWidgets() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SizedBox(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ExploreItem(
                imagePathItem: 'assets/icons/chair.png',
                itemName: "Chair",
                itemDesc: "2,245"),
            ExploreItem(
                imagePathItem: 'assets/icons/couch.png',
                itemName: "Couch",
                itemDesc: "1,935"),
            ExploreItem(
                imagePathItem: 'assets/icons/desk.png',
                itemName: "Desk",
                itemDesc: "435"),
            ExploreItem(
                imagePathItem: 'assets/icons/more.png',
                itemName: "More",
                itemDesc: "34,500"),
          ],
        )));
  }

  Widget popularsWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          PopularItem(
              imgPath: 'assets/images/img2.png',
              itemTitle: "Home Canvas",
              itemDesc: "The Kangaroo Chair & Footstool In Walnut",
              itemRating: "4.5",
              itemReview: "2,500",
              itemCurrentPrice: "39.955.00",
              itemPriceSolved: "44.996.00"),
          PopularItem(
              imgPath: 'assets/images/img3.png',
              itemTitle: "Home Canvas",
              itemDesc: "The Chandigarh Arm Chair In Black Colour",
              itemRating: "4.5",
              itemReview: "2,300",
              itemCurrentPrice: "22.499.00",
              itemPriceSolved: "29.996.00"),
        ],
      ),
    );
  }
}
