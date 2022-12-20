// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardComponent extends StatelessWidget {
  String text;
  String image;
  String title;
  String subtitle;
  CardComponent(
      {super.key,
      required this.image,
      required this.subtitle,
      required this.text,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 20),
      child: Container(
        height: 135.h,
        width: 350.w,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 15, 1, 72),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 200),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                ),
              ),
            ),
            Divider(
              height: 30.h,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 45.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: DecorationImage(
                              image: AssetImage(
                                image,
                              ),
                              fit: BoxFit.fill)),
                      child: const Icon(
                        Icons.photo_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: Text(
                            title,
                            style: TextStyle(
                                fontSize: 18.sp,
                                color:
                                    const Color.fromARGB(255, 222, 217, 217)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, right: 3),
                          child: Text(
                            subtitle,
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: const Color.fromARGB(255, 96, 91, 91)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
