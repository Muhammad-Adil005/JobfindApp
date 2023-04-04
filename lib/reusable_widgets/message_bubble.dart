import 'package:flutter/material.dart';

import 'package:jobfindapp/constants/constants.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    this.sender,
    this.text,
    this.isMe,
  }) : super(key: key);

  final String? sender;
  final String? text;
  final bool? isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
      child: Column(
        crossAxisAlignment:
            isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          // Text(
          //   sender!,
          //   style: TextStyle(color: Colors.black54, fontSize: 10.0),
          // ),
          Container(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Row(
              mainAxisAlignment:
                  isMe! ? MainAxisAlignment.end : MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: Material(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                      bottomLeft:
                          isMe! ? Radius.circular(15.0) : Radius.circular(0.0),
                      bottomRight:
                          isMe! ? Radius.circular(0.0) : Radius.circular(15.0),
                    ),
                    elevation: 5.0,
                    color: isMe! ? orangeRed : Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 14.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Text(
                              "$text",
                              style: TextStyle(
                                fontSize: 13,
                                color: isMe! ? Colors.white : black,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              // Text(
                              //   "${DateFormat('hh:mm a').format(DateTime.now())}",
                              //   // textAlign: TextAlign.end,
                              //   style: TextStyle(color: Colors.black54, fontSize: 8.0),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7,
          ),
        ],
      ),
    );
  }
}
