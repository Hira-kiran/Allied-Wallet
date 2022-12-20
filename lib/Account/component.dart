// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountComponent extends StatelessWidget {
  String image, text;
  final icon;

  AccountComponent(
      {super.key, required this.image, required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
      child: Column(
        children: [
          Container(
            /*  height: 55,
            width: 350, */
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 15, 1, 72)),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 26.r,
                  backgroundImage: AssetImage(
                    image,
                  ),
                  child: Icon(
                    icon,
                    size: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    text,
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
