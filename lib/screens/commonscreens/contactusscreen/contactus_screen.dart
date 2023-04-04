import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:jobfindapp/screens/commonscreens/aboutusscreen/aboutus_screen.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon:
            const Icon(Icons.arrow_back_rounded, size: 30.0, color: Colors.black)),
        backgroundColor: Colors.white,
        title: const Text(
          "Contact Us",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(textAlign: TextAlign.start,
                    softWrap: true,
                    text: TextSpan(
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFF868FA3)
                        ),
                        text: 'Leave us a message, we will get contact with you as soon as possible.')),

                const Padding(
                  padding: EdgeInsets.only(left: 0.0,right: 0.0,top: 15.0,bottom: 15.0),
                  child: Divider(color: Color(0xffEDEDED),thickness: 8.0,),
                ),
                RichText(
                    softWrap: true,
                    text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle1,
                        text: 'Enter Your Name'
                    )),
                SizedBox(height: 10,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Beetrite infotech',
                  ),
                ),
                SizedBox(height: 25,),
                RichText(
                    softWrap: true,
                    text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle1,
                        text: 'Enter Your Email Address'
                    )),
                SizedBox(height: 10,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'beetriteinfotech@gmail.com',
                  ),
                ),
                SizedBox(height: 25,),
                RichText(
                    softWrap: true,
                    text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle1,
                        text: 'Enter Your Mobile Number'
                    )),
                SizedBox(height: 10,),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '95235-53259',
                  ),
                ),
                SizedBox(height: 25,),
                RichText(
                    softWrap: true,
                    text: TextSpan(
                        style: Theme.of(context).textTheme.subtitle1,
                        text: 'Your Message'
                    )),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: const InputDecoration(alignLabelWithHint: true,
                    border: OutlineInputBorder(),
                    labelText: 'What do you want to tell us about?',
                  ),
                ),
                SizedBox(height: Get.height * 0.1,),

                CommonButton(text: "Send Us", buttonColor: orangeRed, textColor: Colors.white, buttonShadowColor: orangeRed.withOpacity(0.5), borderSide: BorderSide.none, onPressed: () {
                  Get.to(()=> AboutUsScreen());
                }),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
