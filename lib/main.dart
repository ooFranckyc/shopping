import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping/screens/home_page.dart';

// (c)copyright ooFrancky, Open Source, 2022 All Right Flutter
// Writed by Franck Mekoulou
// source for this design app : https://dribbble.com/shots/18896325-Furniture-Shopping-App/attachments/14071196?mode=media
// Contact Name : Arun PP
// Contact Info : https://dribbble.com/arunvenupp (Drible only)
// Note : Please follow this profile 😁

// WARNING : NO REPONSSIVE IMPLEMENT, THIS APP IS ADAPT TO SAMSUNG DEVICE

void main() {
  /*
    Provide : On the Android sytem leve, we need to specify some display
    prorieties, this is important when we need to build an identical app as the
    project mockup indicates.
     * What is a SystemChrome ?
     * A Systeme chrome is the custom theme manager for a flutter app, but not
     * only that, it can also do a lot of things of course you must request the
     * information from the documentation to be aware of these functions. yes, yes !
     * you have to
     * So here we just ask for a theme configuration to adapt to the models
  */
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarContrastEnforced: true,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemStatusBarContrastEnforced: true));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
