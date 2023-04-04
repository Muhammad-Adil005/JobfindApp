import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobfindapp/constants/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_rounded,
                size: 30.0, color: Colors.black)),
        backgroundColor: white,
        title: Text(
          "Notifications",
          style: TextStyle(
              color: black, fontSize: 19, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    //notificationScreenController.markAsRead.addAll(Iterable.generate(40));
                  },
                  child: Text(
                    "Mark all read",
                    style: TextStyle(color: black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 40,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 0.0),
                child: Container(
                  color: Colors.white,
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 40,
                        child: Image.network(
                            'https://www.kindpng.com/picc/m/271-2711764_girl-image-in-circle-hd-png-download.png'),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                      selectedColor: Colors.red,
                      selectedTileColor: Colors.yellow,
                      trailing: Wrap(
                        direction: Axis.vertical,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: <Widget>[
                          Text(
                            "${DateTime.now().second} s",
                            style: TextStyle(fontSize: 8.0),
                          ), // icon-1
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              size: 20,
                            ),
                            onPressed: () {},
                          ), // icon-2
                        ],
                      ),
                      title: Text(
                        "You have a message from jbchdbchdhcdcdsjvchdsvcvdhcvdvcvsdvcg $index",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 13),
                      )),
                ),
              );
            }),
      ),
    );
  }
}

/*
Container(
                      width: Get.width * 0.22,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 4,
                            // backgroundColor: notificationScreenController.selectedIndex.value ==
                            //     index || notificationScreenController.markAsRead.contains(index)
                            //     ? Colors.transparent
                            //     : Color(0xFF008479),
                          ),
                          CircleAvatar(
                            radius: 40,
                            child: Image.network(
                                'https://www.kindpng.com/picc/m/271-2711764_girl-image-in-circle-hd-png-download.png'),
                          ),
                        ],
                      ),
                    ),
 */
