// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewWallet extends StatelessWidget {
  const NewWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 1, 37),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 2, 1, 37),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                          image: const DecorationImage(
                              image: AssetImage(
                                "images/imgg.png",
                              ),
                              fit: BoxFit.fill)),
                      child: const Icon(
                        Icons.photo_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text(
                          "ETHERUM",
                          style: TextStyle(
                              fontSize: 18.sp,
                              color: const Color.fromARGB(255, 96, 91, 91)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Text(
                          "42kj8997h7677u88",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: const Color.fromARGB(255, 96, 91, 91)),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text("0.56 ETH",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 20, bottom: 15, right: 20),
                        child: Center(
                          child: TextFormField(
                              cursorColor: Colors.grey,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  label: Text("To (Wallet Address)"),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 20, bottom: 15, right: 20),
                        child: Center(
                          child: TextFormField(
                              cursorColor: Colors.grey,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  label: Text("Amount"),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 60.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 20, bottom: 15, right: 20),
                        child: Center(
                          child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                  label: Text("Fee"),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 140.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 13, left: 20, bottom: 15, right: 20),
                        child: Center(
                          child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                  hintMaxLines: 5,
                                  label: Text("Note"),
                                  labelStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none))),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                      height: 55.h,
                      width: 350.w,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage("images/imgg.png"),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 13, left: 20, bottom: 15, right: 20),
                        child: Center(
                            child: Text(
                          "Done",
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 1, 37),
                              fontSize: 19),
                        )),
                      ),
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
