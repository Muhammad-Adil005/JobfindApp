import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/message_bubble.dart';
import 'package:jobfindapp/screens/userscreens/userchatscreen/videocall_screen.dart';

class OneToOneChatScreen extends StatefulWidget {
  const OneToOneChatScreen({Key? key}) : super(key: key);

  @override
  _OneToOneChatScreenState createState() => _OneToOneChatScreenState();
}

class _OneToOneChatScreenState extends State<OneToOneChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 75.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_rounded, size: 30.0, color: black)),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 21,
                  child: Image.asset('assets/girl.png'),
                ),
              ],
            ),
            SizedBox(
              width: Get.width * 0.03,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Joseph",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        elevation: 1.0,
        actions: [
          IconButton(
            icon: Icon(Icons.videocam_outlined, size: 30.0, color: black),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UserVideoCallScreen()));
            },
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(Icons.more_vert_rounded, size: 30.0, color: black),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // MessagesStream(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: ListView(
                    // reverse: true,
                    //children: oneToOneChatScreenController.messageBubbles.value,
                    ),
              ),
            ),
            Container(
              // decoration: kMessageContainerDecoration,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        cursorColor: orangeRed,
                        cursorHeight: 23,
                        //controller:
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: orangeRed,
                      ),
                      child: Material(
                        shape: CircleBorder(),
                        // borderRadius: BorderRadius.circular(50.0),
                        // shape: ShapeBorder,
                        color: Colors.transparent,
                        child: Image.asset('assets/arrow.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // body: SafeArea(
      //   child: ListView.builder(
      //       itemCount: 40,
      //       itemBuilder: (BuildContext context, int index) {
      //         return Padding(
      //           padding:
      //           const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      //           child: ListTile(
      //
      //             contentPadding: EdgeInsets.all(10),
      //             selectedColor: Colors.red,
      //             selectedTileColor: Colors.yellow,
      //             onTap: () {
      //               Navigator.push(
      //                   context,
      //                   MaterialPageRoute(
      //                       builder: (context) => OneToOneOneToOneChatScreen()));
      //
      //
      //             },
      //             leading: CircleAvatar(
      //               radius: 40,
      //               child: Image.network(
      //                   'https://www.kindpng.com/picc/m/271-2711764_girl-image-in-circle-hd-png-download.png'),
      //             ),
      //             trailing: Wrap(
      //               direction: Axis.vertical,
      //               // verticalDirection: VerticalDirection.down,
      //               // alignment: WrapAlignment.center,
      //               crossAxisAlignment: WrapCrossAlignment.center,
      //               children: <Widget>[
      //                 Text("${DateFormat('EEEE').format(DateTime.now())}" , style: TextStyle(fontSize: 8.0),),
      //                 SizedBox(height: 10,),// icon-1
      //                 CircleAvatar(
      //                   backgroundColor: orangeRed,
      //                   radius: 10,
      //                   child: Text("4" , style: TextStyle(color: Colors.white , fontSize: 10.0),),
      //                 ), // icon-2
      //               ],
      //             ),
      //             title: Text("Allen Joseph" , style: TextStyle(fontSize: 18.0 , fontWeight: FontWeight.w400),),
      //             subtitle: Text("Thanks for sharing" , style: TextStyle(fontSize: 13.0 , fontWeight: FontWeight.w400),),
      //           ),
      //         );
      //       }),
      //
      // ),
    );
  }
}
