import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/drawer.dart';
import 'package:shopping/widgets/model_chairs_fav.dart';

class FavoriteFragment extends StatefulWidget {
  const FavoriteFragment({Key? key}) : super(key: key);

  @override
  State<FavoriteFragment> createState() => _FavoriteFragmentState();
}

class _FavoriteFragmentState extends State<FavoriteFragment> {
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
          "WhisList".toUpperCase(),
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            SizedBox(height: 20),
            ModelChairsFavorite(
                itemTitle: "Home Canvas",
                itemName: "The Chandigarh Arm Chair In Black Colour",
                itemImgPath: 'assets/images/img2.png',
                itemRating: "4.5",
                itemReview: "2.300",
                itemPrice: "22.499.00",
                itemPriceSolved: "29.996.00"),
            SizedBox(height: 10),
            ModelChairsFavorite(
                itemTitle: "Woodsmorth",
                itemName: "Avian Solid Wood Armchair In Rustie Teak Finish",
                itemImgPath: 'assets/images/img2.png',
                itemRating: "4.5",
                itemReview: "2.300",
                itemPrice: "10.999.00",
                itemPriceSolved: "17.631.00"),
            SizedBox(height: 10),
            ModelChairsFavorite(
                itemTitle: "Bahemiana",
                itemName: "Sibuyan Leather Unphotered Armchair In Red Colour",
                itemImgPath: 'assets/images/img2.png',
                itemRating: "4.5",
                itemReview: "2.300",
                itemPrice: "21.114.00",
                itemPriceSolved: "29.327.00"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
