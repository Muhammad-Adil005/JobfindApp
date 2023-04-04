import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import '../../onetoonechat_screen.dart';

class UserChatScreen extends StatefulWidget {
  const UserChatScreen({Key? key}) : super(key: key);

  @override
  _UserChatScreenState createState() => _UserChatScreenState();
}

class _UserChatScreenState extends State<UserChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: white,
        title: Text(
          "Chat",
          style: TextStyle(color: black, fontSize: 23.sp),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Icon(Icons.search_rounded, size: 30.sp, color: black),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 40,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 3),
                child: Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 7.0),
                    selectedColor: Colors.red,
                    selectedTileColor: Colors.yellow,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OneToOneChatScreen(),
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      radius: 35,
                      child: Image.network(
                          'https://www.kindpng.com/picc/m/271-2711764_girl-image-in-circle-hd-png-download.png'),
                    ),
                    trailing: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10.h,
                        ), // icon-1
                        CircleAvatar(
                          backgroundColor: orangeRed,
                          radius: 10.r,
                          child: Text(
                            "4",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.0),
                          ),
                        ), // icon-2
                      ],
                    ),
                    title: Text(
                      "Jackson khan",
                      style: TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      "Thanks for sharing ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
