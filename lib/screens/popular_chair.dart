import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/widgets/model_chairs.dart';

class PopularChairs extends StatefulWidget {
  const PopularChairs({Key? key}) : super(key: key);

  @override
  State<PopularChairs> createState() => _PopularChairsState();
}

class _PopularChairsState extends State<PopularChairs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black, size: 25),
          centerTitle: true,
          title: Text(
            "Chairs".toUpperCase(),
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  // send user to coach page
                },
                icon: const Icon(
                  CupertinoIcons.arrow_turn_right_up,
                  color: Colors.black,
                  size: 25,
                ))
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: const [
              SizedBox(height: 20),
              ModelChairs(
                  itemTitle: "Bahemiana",
                  itemName:
                      "Egon Solid Wood Iconic Chair With Metal Black in Black Finish",
                  itemImgPath: 'assets/images/img2.png',
                  itemRating: "4.5",
                  itemReview: "2.300",
                  itemPrice: "8.999.00",
                  itemPriceSolved: "13.499.00"),
              SizedBox(height: 10),
              ModelChairs(
                  itemTitle: "Bahemiana",
                  itemName:
                      "Danlou Tolix Chair With Wooden Seat In Sliver Colour",
                  itemImgPath: 'assets/images/img2.png',
                  itemRating: "4.5",
                  itemReview: "2.300",
                  itemPrice: "5.142.00",
                  itemPriceSolved: "9.499.00"),
              SizedBox(height: 10),
              ModelChairs(
                  itemTitle: "Bahemiana",
                  itemName: "Achile Cafe Chair In Black Finish",
                  itemImgPath: 'assets/images/img2.png',
                  itemRating: "4.5",
                  itemReview: "2.300",
                  itemPrice: "6.999.00",
                  itemPriceSolved: "10.499.00"),
              SizedBox(height: 10),
              ModelChairs(
                  itemTitle: "Bahemiana",
                  itemName: "Ekati  Tofix Chair In Red Colour",
                  itemImgPath: 'assets/images/img2.png',
                  itemRating: "4.5",
                  itemReview: "2.300",
                  itemPrice: "6.499.00",
                  itemPriceSolved: "9.499.00"),
              SizedBox(height: 10),
              ModelChairs(
                  itemTitle: "Bahemiana",
                  itemName: "Milke Coffe Tofix Black White",
                  itemImgPath: 'assets/images/img2.png',
                  itemRating: "4.5",
                  itemReview: "2.300",
                  itemPrice: "8.999.00",
                  itemPriceSolved: "13.499.00"),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}
