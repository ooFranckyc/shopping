import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping/screens/cast.dart';
import 'package:shopping/screens/explorer.dart';
import 'package:shopping/screens/favorite.dart';
import 'package:shopping/screens/home.dart';
import 'package:shopping/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List listScreenFragmentIndexed = const [
    HomeFragment(),
    ExplorerFragment(),
    CastFragment(),
    FavoriteFragment(),
    ProfileFragment()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listScreenFragmentIndexed[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: const IconThemeData(color: Colors.black54),
          selectedIconTheme: const IconThemeData(color: Color(0xffFF7035)),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
              color: Color(0xffFF7035),
              fontWeight: FontWeight.bold,
              fontSize: 12),
          unselectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 10),
          iconSize: 30,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home_rounded,
                ),
                label: "Home".toUpperCase()),
            BottomNavigationBarItem(
                icon: const Icon(Icons.explore_outlined),
                label: "Explore".toUpperCase()),
            BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.bag),
                label: "Cart".toUpperCase()),
            BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
                label: "WhisList".toUpperCase()),
            BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.person_alt_circle_fill),
                label: "You".toUpperCase()),
          ]),
    );
  }
}
