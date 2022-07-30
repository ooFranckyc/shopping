import 'package:flutter/material.dart';

/*
  To represent our views, this file does the trick, so it returns a ready-made
  view corresponding to an article where the information is dynamic injectable
*/

class ExploreItem extends StatelessWidget {
  final String imagePathItem;
  final String itemName;
  final String itemDesc;
  const ExploreItem(
      {Key? key,
      required this.imagePathItem,
      required this.itemName,
      required this.itemDesc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xffF8F9FA),
              borderRadius: BorderRadius.circular(12)),
          child: Image.asset(
            imagePathItem,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          itemName,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 5),
        Text(
          '$itemDesc items',
          style: const TextStyle(
              color: Colors.black26, fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
