import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/screens/onetoonechat_screen.dart';

class CompanyChatScreen extends StatelessWidget {
  const CompanyChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: white,
        title: Text(
          "Chat",
          style: TextStyle(color: black, fontSize: 23),
        ),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Icon(Icons.search_rounded, size: 30.0, color: black),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   label: Row(
      //     children: [
      //       Text("New" , style: TextStyle(fontSize: 11.0),),
      //       SizedBox(
      //         width: 4.0,
      //       ),
      //       Icon(Icons.edit , size: 18.0,),
      //     ],
      //   ),
      //   onPressed: () {
      //
      //   },
      // ),
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
                      // verticalDirection: VerticalDirection.down,
                      // alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        // Text(
                        //   "${DateFormat('EEEE').format(DateTime.now())}",
                        //   style: TextStyle(fontSize: 8.0),
                        // ),
                        SizedBox(
                          height: 10,
                        ), // icon-1
                        CircleAvatar(
                          backgroundColor: orangeRed,
                          radius: 10,
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
                          fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                    subtitle: Text(
                      "Thanks for sharing dfdfdf dfdf sdf dfdf dfdffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13.0,
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
