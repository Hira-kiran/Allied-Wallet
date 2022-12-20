// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cardComponent.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 1, 37),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 210.h,
                  width: 200.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/imgg.png"),
                          fit: BoxFit.fill),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(290))),
                  child: Center(
                    child: Text(
                      "Card",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.sp),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 190, left: 15, bottom: 20),
                      child: CardComponent(
                        image: "images/imgg.png",
                        text: "Card",
                        subtitle: "457HGS78K8",
                        title: "BITCOIN",
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, bottom: 20),
                      child: CardComponent(
                        image: "images/imgg.png",
                        text: "Card",
                        subtitle: "457HGS78K8",
                        title: "RIPPLE",
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/imgg.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "3.0 RPL",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      )),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, bottom: 20),
                      child: CardComponent(
                        image: "images/imgg.png",
                        text: "Card",
                        subtitle: "457HGS78K8",
                        title: "DASH",
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/imgg.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "44.2 DSH",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      )),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 15, bottom: 20),
                      child: CardComponent(
                        image: "images/imgg.png",
                        text: "Card",
                        subtitle: "457HGS78K8",
                        title: "ETHERUM",
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("images/imgg.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "2.2 ETH",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      )),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
