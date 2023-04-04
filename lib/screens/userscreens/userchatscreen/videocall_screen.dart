import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserVideoCallScreen extends StatefulWidget {
  const UserVideoCallScreen({Key? key}) : super(key: key);

  @override
  _UserVideoCallScreenState createState() => _UserVideoCallScreenState();
}

class _UserVideoCallScreenState extends State<UserVideoCallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/video.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 15.h,
              left: 10.w,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              top: 15.h,
              right: 15.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: 150.h,
                  width: 100.w,
                  child: Image.asset(
                    "assets/pic.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: 200.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black54,
                        Colors.black45,
                        Colors.black12,
                        Colors.transparent
                      ]),
                ),
              ),
            ),
            Positioned(
              bottom: 15.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CallOptions(
                      icon: Icons.message_outlined,
                    ),
                    CallOptions(
                      icon: Icons.mic_off_rounded,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFFF6D58),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.call_end_outlined,
                              color: Colors.white,
                              size: 35.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    CallOptions(
                      icon: Icons.videocam_off_outlined,
                    ),
                    CallOptions(
                      icon: Icons.flip_camera_ios_outlined,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CallOptions extends StatelessWidget {
  final IconData icon;

  const CallOptions({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Container(
        height: 51.0,
        width: 51.0,
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Colors.transparent,
            Colors.black54.withOpacity(0.5),
          ]),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              // Navigator.pop(context);
            },
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
