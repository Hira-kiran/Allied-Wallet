// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Account/accounScreen.dart';
import '../Contact/contactScreen.dart';
import '../Home/home.dart';
import '../Message/messageScreen.dart';
import '../card/card.dart';

class MyNav extends StatefulWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
  // final navigationkey=
  // GlobalKey<CurvedNavigationBar>;
  int index = 0;
  final screens = [
    const HomeScreen(),
    const MessageScreen(),
    const AccountScreen(),
    const CardScreen(),
    const ContactScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter',
        home: Scaffold(
          body: screens[index],
          bottomNavigationBar: CurvedNavigationBar(
            color: const Color.fromARGB(255, 2, 1, 37),
            buttonBackgroundColor: Colors.purple,
            backgroundColor: const Color.fromARGB(255, 2, 1, 37),
            items: const [
              Icon(
                Icons.wallet,
                color: Colors.white,
              ),
              Icon(
                Icons.message,
                color: Colors.white,
              ),
              Icon(
                Icons.biotech,
                color: Colors.white,
              ),
              Icon(
                Icons.card_travel,
                color: Colors.white,
              ),
              Icon(
                Icons.account_box,
                color: Colors.white,
              ),
            ],
            height: 60.h,
            index: index,
            onTap: ((index) => setState(() => this.index = index)),
          ),
        ));
  }
}
