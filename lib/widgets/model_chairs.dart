import 'package:flutter/material.dart';

// View model of standard chair items

class ModelChairs extends StatelessWidget {
  final String itemTitle;
  final String itemName;
  final String itemImgPath;
  final String itemRating;
  final String itemReview;
  final String itemPrice;
  final String itemPriceSolved;
  const ModelChairs(
      {Key? key,
      required this.itemTitle,
      required this.itemName,
      required this.itemImgPath,
      required this.itemRating,
      required this.itemReview,
      required this.itemPrice,
      required this.itemPriceSolved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 210,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black12),
                  child: Image.asset(itemImgPath, width: 100, height: 100),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemTitle,
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        itemName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFC833),
                                borderRadius: BorderRadius.circular(100)),
                            child: const Icon(
                              Icons.star_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          const SizedBox(width: 3),
                          Text(
                            "$itemRating Rating ($itemReview Review)",
                            style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black26,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "RS. $itemPrice",
                            style: const TextStyle(
                                color: Color(0xff86BE7C),
                                fontWeight: FontWeight.bold,
                                fontSize: 13),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "RS. $itemPriceSolved",
                            style: const TextStyle(
                                color: Colors.black26,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough,
                                fontSize: 12),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Add to card".toUpperCase(),
                    style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  width: 160,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffFE7035),
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Add to card".toUpperCase(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
