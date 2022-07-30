import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/drawer.dart';
import 'package:shopping/widgets/model_chairs_fav.dart';

class CastFragment extends StatefulWidget {
  const CastFragment({Key? key}) : super(key: key);

  @override
  State<CastFragment> createState() => _CastFragmentState();
}

class _CastFragmentState extends State<CastFragment> {
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
          "Cart".toUpperCase(),
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
      backgroundColor: Colors.grey[200],
      body: ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          const ModelChairsFavorite(
              itemTitle: "Home Canvas",
              itemName: "The Chandigarh Arm Chair In Black Colour",
              itemImgPath: 'assets/images/img2.png',
              itemRating: "4.5",
              itemReview: "2.300",
              itemPrice: "22.499.00",
              itemPriceSolved: "29.996.00"),
          const SizedBox(height: 20),
          const ModelChairsFavorite(
              itemTitle: "Home Canvas",
              itemName: "The Chandigarh Arm Chair In Black Colour",
              itemImgPath: 'assets/images/img2.png',
              itemRating: "4.5",
              itemReview: "2.300",
              itemPrice: "22.499.00",
              itemPriceSolved: "29.996.00"),
          const SizedBox(height: 20),
          const ModelChairsFavorite(
              itemTitle: "Home Canvas",
              itemName: "The Chandigarh Arm Chair In Black Colour",
              itemImgPath: 'assets/images/img2.png',
              itemRating: "4.5",
              itemReview: "2.300",
              itemPrice: "22.499.00",
              itemPriceSolved: "29.996.00"),
          const SizedBox(height: 20),
          const ModelChairsFavorite(
              itemTitle: "Home Canvas",
              itemName: "The Chandigarh Arm Chair In Black Colour",
              itemImgPath: 'assets/images/img2.png',
              itemRating: "4.5",
              itemReview: "2.300",
              itemPrice: "22.499.00",
              itemPriceSolved: "29.996.00"),
          const SizedBox(height: 20),
          const ModelChairsFavorite(
              itemTitle: "Home Canvas",
              itemName: "The Chandigarh Arm Chair In Black Colour",
              itemImgPath: 'assets/images/img2.png',
              itemRating: "4.5",
              itemReview: "2.300",
              itemPrice: "22.499.00",
              itemPriceSolved: "29.996.00"),
          const SizedBox(height: 30),
          const Spacer(),
          explorerTitleArg("Change", () {
            // How change cart content
          }),
          const SizedBox(height: 30),
          arronWidget(),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              // Code
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: double.infinity,
                height: 65,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Checkout".toUpperCase(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget explorerTitleArg(String title, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
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

  Widget arronWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Arun App".toUpperCase(),
            style: const TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          const Text(
            "House No, 123 Ipsum Street, 12th 100ft Road",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400),
          ),
        ]),
      ),
    );
  }
}
