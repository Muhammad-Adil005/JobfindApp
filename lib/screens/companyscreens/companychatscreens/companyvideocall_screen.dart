import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CompanyVideoCallScreen extends StatelessWidget {
  const CompanyVideoCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                "assets/video.png",
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 15.0,
              left: 10.0,
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            Positioned(
              top: 15.0,
              right: 15.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: Get.height * 0.22,
                  width: Get.width * 0.3,
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
                height: Get.height * 0.2,
                width: Get.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        // Colors.black87,
                        Colors.black54,
                        Colors.black45,
                        // Colors.black26,
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
                // width: double.infinity,
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
                        decoration: BoxDecoration(color: Color(0xFFFF6D58),
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
