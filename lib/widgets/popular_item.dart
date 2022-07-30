import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

// Model view for Popular item

class PopularItem extends StatefulWidget {
  final String imgPath;
  final String itemTitle;
  final String itemDesc;
  final String itemRating;
  final String itemReview;
  final String itemCurrentPrice;
  final String itemPriceSolved;
  const PopularItem(
      {Key? key,
      required this.imgPath,
      required this.itemTitle,
      required this.itemDesc,
      required this.itemRating,
      required this.itemReview,
      required this.itemCurrentPrice,
      required this.itemPriceSolved})
      : super(key: key);

  @override
  State<PopularItem> createState() => _PopularItemState();
}

class _PopularItemState extends State<PopularItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: 190,
              height: 210,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffF8F9FA)),
              child: Image.asset(widget.imgPath, width: 230, height: 230),
            ),
            Positioned(
              right: 0,
              top: 5,
              child: Container(
                width: 40,
                height: 40,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 10, top: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100)),
                child: LikeButton(
                  size: 25,
                  circleColor: const CircleColor(
                      start: Colors.black26, end: Colors.black26),
                  bubblesColor: const BubblesColor(
                      dotPrimaryColor: Colors.black26,
                      dotSecondaryColor: Colors.black26),
                  likeBuilder: (bool isLked) {
                    return Icon(Icons.favorite,
                        size: 20,
                        color: isLked ? const Color(0xffFF7035) : Colors.grey);
                  },
                ),
                /*
                
                */
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.itemTitle,
                style: const TextStyle(
                    color: Color(0xffC4DFC0),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 170,
                child: Text(
                  widget.itemDesc,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
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
                    "${widget.itemRating} Rating (${widget.itemReview} Review)",
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
                    "RS. ${widget.itemCurrentPrice}",
                    style: const TextStyle(
                        color: Color(0xff86BE7C),
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "RS. ${widget.itemPriceSolved}",
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
    );
  }
}
