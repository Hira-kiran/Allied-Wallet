// ignore_for_file: file_names

import 'package:allied_wallet/Message/sahar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'component.dart';
import 'farhan.dart';
import 'hira.dart';
import 'iqra.dart';
import 'kamran.dart';
import 'misbah.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color.fromARGB(255, 2, 1, 37),
        appBar: AppBar(
          // toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Idiots Group",
            style: TextStyle(fontSize: 22.sp),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.settings,
                size: 27,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HiraConversation()));
                    },
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const HiraConversation()));
                      },
                      child: ImagesDp(
                        image: 'images/img1.jpg',
                        name: "Hira",
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const FarhanConversation()));
                    },
                    child: ImagesDp(
                      image: 'images/farhan.jpg',
                      name: "Farhan",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SaharConversation()));
                    },
                    child: ImagesDp(
                      image: 'images/img4.webp',
                      name: "Sahar",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IqraConversation()));
                    },
                    child: ImagesDp(
                      image: 'images/img3.webp',
                      name: "Iqra",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const KamranConversation()));
                    },
                    child: ImagesDp(
                      image: 'images/kkam.jpg',
                      name: "Kamran",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MisbahConversation()));
                    },
                    child: ImagesDp(
                      image: 'images/img2.jpg',
                      name: "Misbah",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 220,
            ),
            Column(
              children: [
                const Icon(
                  Icons.message,
                  color: Colors.grey,
                  size: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "No conversation yet!",
                    style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
