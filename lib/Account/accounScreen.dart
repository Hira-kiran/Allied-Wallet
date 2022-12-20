// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'component.dart';
import 'newWallet.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 1, 37),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CircleAvatar(
                      radius: 60.r,
                      backgroundColor: const Color.fromARGB(255, 15, 1, 72),
                      child: const Icon(
                        Icons.photo,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Create new wallet",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      "Which currency would you like to use?",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 112, 111, 111),
                          fontSize: 15.sp),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewWallet()));
                      },
                      child: AccountComponent(
                        image: "images/imgg.png",
                        text: "BitCoins",
                        icon: Icons.currency_bitcoin,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewWallet()));
                      },
                      child: AccountComponent(
                        image: "images/imgg.png",
                        text: "Dash",
                        icon: Icons.dashboard,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewWallet()));
                      },
                      child: AccountComponent(
                        image: "images/imgg.png",
                        text: "Ripple",
                        icon: Icons.receipt_long_sharp,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewWallet()));
                      },
                      child: AccountComponent(
                        image: "images/imgg.png",
                        text: "Leterum",
                        icon: Icons.cloud_circle,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
