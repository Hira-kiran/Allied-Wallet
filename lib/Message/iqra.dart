// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IqraConversation extends StatefulWidget {
  const IqraConversation({super.key});

  @override
  State<IqraConversation> createState() => _IqraConversationState();
}

class _IqraConversationState extends State<IqraConversation> {
  TextEditingController messageController = TextEditingController();
  List<String> list = [];
  StreamSoket streamSoket = StreamSoket();

  Stream<int> StreamData() async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 3));
      yield DateTime.now().second;
    }
  }

  @override
  void initState() {
    super.initState();
    // list.add("hira");
    streamSoket.addResponse(list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 144, 141, 225),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 2, 1, 37),
        title: const Text("Iqra"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: StreamBuilder(
                    stream: streamSoket.getResponse,
                    builder: ((context, AsyncSnapshot<List<String>> snapshot) {
                      if (snapshot.hasError) {
                        return Text(snapshot.error.toString());
                      } else if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              return Text(snapshot.data![index].toString());
                            });
                      } else {
                        return Center(
                            child: Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 95),
                            child: Column(
                              children: [
                                Image(
                                  height: 200.h,
                                  image: const AssetImage("images/nomsg.webp"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Not Have Message",
                                    style: TextStyle(
                                        color:
                                            const Color.fromARGB(255, 2, 1, 37),
                                        fontSize: 18.sp),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ));
                      }
                    })),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 2, 1, 37),
                        size: 35,
                      )),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: TextFormField(
                        enableSuggestions: true,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: const Color.fromARGB(255, 2, 1, 37),
                        controller: messageController,
                        decoration: InputDecoration(
                            hintText: 'Enter message',
                            hintStyle: const TextStyle(
                              color: Color.fromARGB(255, 2, 1, 37),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 2, 1, 37),
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 2, 1, 37),
                                )),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: IconButton(
                      onPressed: () {
                        list.add(messageController.text.toString());
                        streamSoket.addResponse(list);
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Color.fromARGB(255, 2, 1, 37),
                        size: 30,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class
class StreamSoket {
  final _stream = StreamController<List<String>>.broadcast();
  void Function(List<String>) get addResponse =>
      _stream.sink.add; //for add data in screeen
  Stream<List<String>> get getResponse => _stream.stream.asBroadcastStream();
}
