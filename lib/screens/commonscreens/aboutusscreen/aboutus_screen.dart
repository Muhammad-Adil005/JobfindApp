import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

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
          "About",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Terms of Service'),
                //  trailing: AnimatedIcon(icon: AnimatedIcons.arrow_menu, progress: _halfTween,),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                        softWrap: true,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.subtitle1,
                            text:
                                'Help protect your website and its users with clear and fair website terms and  conditions. These terms and conditions  for a website set out key issues such as acceptable use, privacy, cookies, registration and passwords, intellectual property, links to other sites, termination and disclaimers of responsibility. ')),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Privacy policy'),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                        softWrap: true,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.subtitle1,
                            text:
                                'Help protect your website and its users with clear and fair website terms and  conditions. These terms and conditions  for a website set out key issues such as acceptable use, privacy, cookies, registration and passwords, intellectual property, links to other sites, termination and disclaimers of responsibility. ')),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
