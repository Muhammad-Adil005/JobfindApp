import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:jobfindapp/screens/commonscreens/contactusscreen/contactus_screen.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

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
          "FAQ",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                SizedBox(
                  height: 50.0,
                  child: TextField(
                    decoration:   InputDecoration(alignLabelWithHint: true,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                      labelText: 'Search Your Question',
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 34,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff219289),
                      ),
                      child: Center(child: Text('Salary',style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 34,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffffffff),
                      ),
                      child: Center(child: Text('Position',style: TextStyle(color: Color(0xffA8AAAF), fontSize: 14),)),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 34,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffffffff),
                      ),
                      child: Center(child: Text('Yes',style: TextStyle(color: Color(0xff8A98A4), fontSize: 14),)),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text('I won’t Able To Add New Job' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Color(0xFF333F52)),),
                  trailing: Icon(Icons.add),
                  children: [
                    RichText(
                        softWrap: true,
                        text: TextSpan(
                            style: Theme.of(context).textTheme.subtitle1,
                            text: 'Put Data Here')),
                  ],),
                ExpansionTile(
                  title: Text('How To Add New Jobs?' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Color(0xFF333F52)),),

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          softWrap: true,
                          text: TextSpan(
                              style: Theme.of(context).textTheme.subtitle1,
                              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet sodales in lorem tellus purus ante. Suspendisse nisi ultricies faucibus non, nascetur tincidunt ultrices. Praesent mollis nunc et, nisi, vitae orci, dolor, nunc. Tristique tincidunt diam quisque.')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          RichText(textAlign: TextAlign.start,
                              softWrap: true,
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.subtitle1,
                                  text: 'Was this helpful?')),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff219289),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffffffff),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xff8A98A4), fontSize: 14),)),
                        ),
                      ],
                    )
                  ],),
                ExpansionTile(
                  title: Text('How To Add New Jobs?' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Color(0xFF333F52)),),

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          softWrap: true,
                          text: TextSpan(
                              style: Theme.of(context).textTheme.subtitle1,
                              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet sodales in lorem tellus purus ante. Suspendisse nisi ultricies faucibus non, nascetur tincidunt ultrices. Praesent mollis nunc et, nisi, vitae orci, dolor, nunc. Tristique tincidunt diam quisque.')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          RichText(textAlign: TextAlign.start,
                              softWrap: true,
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.subtitle1,
                                  text: 'Was this helpful?')),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff219289),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffffffff),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xff8A98A4), fontSize: 14),)),
                        ),
                      ],
                    )
                  ],),
                ExpansionTile(
                  title: Text('Reporting an issue' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Color(0xFF333F52)),),

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          softWrap: true,
                          text: TextSpan(
                              style: Theme.of(context).textTheme.subtitle1,
                              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet sodales in lorem tellus purus ante. Suspendisse nisi ultricies faucibus non, nascetur tincidunt ultrices. Praesent mollis nunc et, nisi, vitae orci, dolor, nunc. Tristique tincidunt diam quisque.')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          RichText(textAlign: TextAlign.start,
                              softWrap: true,
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.subtitle1,
                                  text: 'Was this helpful?')),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff219289),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffffffff),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xff8A98A4), fontSize: 14),)),
                        ),
                      ],
                    )
                  ],),

                ExpansionTile(
                  title: Text('Amending or canceling an order' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500 , color: Color(0xFF333F52)),),

                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          softWrap: true,
                          text: TextSpan(
                              style: Theme.of(context).textTheme.subtitle1,
                              text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Amet sodales in lorem tellus purus ante. Suspendisse nisi ultricies faucibus non, nascetur tincidunt ultrices. Praesent mollis nunc et, nisi, vitae orci, dolor, nunc. Tristique tincidunt diam quisque.')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          RichText(textAlign: TextAlign.start,
                              softWrap: true,
                              text: TextSpan(
                                  style: Theme.of(context).textTheme.subtitle1,
                                  text: 'Was this helpful?')),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xff219289),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 28,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffffffff),
                          ),
                          child: Center(child: Text('Yes',style: TextStyle(color: Color(0xff8A98A4), fontSize: 14),)),
                        ),
                      ],
                    )
                  ],),
                SizedBox(
                  height: 30.0,
                ),
                RichText(
                  softWrap: true,
                  text: const TextSpan(
                      style: TextStyle(color: Color(0xffFF725E), fontSize: 18,),
                      text: 'Need More Help?'
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child:  Text(
                        "Check out our quick help topics below, or call us and we'll help you solve your issue.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w500 , color: Color(0xFF333F52)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.14,
                ),

                CommonButton(text: "Call customer care", buttonColor: orangeRed, textColor: Colors.white, buttonShadowColor: orangeRed, borderSide: BorderSide.none, onPressed: () {
                  Get.to(()=> ContactUsScreen());
                }),
                SizedBox(
                  height: 10.0,
                ),
                /// todo: here you have to add button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
