import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:jobfindapp/screens/commonscreens/contactusscreen/contactus_screen.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({Key? key}) : super(key: key);

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
        backgroundColor: Colors.white,
        title: const Text(
          "Privacy policy",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                        "Privacy Policy",

                    style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w700),
                  ),),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet sodales in lorem tellus purus ante. Suspendisse nisi ultricies faucibus non, nascetur tincidunt ultrices. Praesent mollis nunc et, nisi, vitae orci, dolor, nunc. Tristique tincidunt diam quisque lectus mauris dignissim quisque. Diam tortor molestie adipiscing fusce gravida dui viverra pellentesque cras. In hendrerit mi in tellus sed. Elementum viverra odio egestas dui sed nulla cras eu. Etiam convallis felis nunc aliquet in orci diam consectetur. Feugiat fusce mauris id facilisis id. Congue ut aliquet fusce congue aenean. Ut id sed faucibus vulputate porttitor.Sit porttitor ante sed sed viverra donec cras nunc. Urna senectus dignissim et hac diam velit at. Pulvinar nisl lectus sit in posuere nascetur sapien. Sit sit pretium nibh id diam amet. Turpis augue quisque feugiat aliquet urna, in ornare cursus. Ut.',
                    style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w400),
                  ),),
                ],
              ),
              Spacer(),
              Text(
                "Last Updated 10th Oct. 2021",
                style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),
              ),

              SizedBox(
                height: 10.0,
              ),

              /// todo: here you have to add button
            ],
          ),
        ),
      ),
    );
  }
}
