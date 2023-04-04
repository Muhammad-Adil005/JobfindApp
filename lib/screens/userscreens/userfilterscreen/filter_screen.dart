import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    String selectedValue = "UI/UX Design";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Get.offAll(() => SearchScreen());
            },
            icon: Icon(Icons.arrow_back_rounded, size: 30.0, color: black)),
        backgroundColor: white,
        title: Text(
          "Filter",
          style: TextStyle(color: black, fontSize: 23),
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          child: Obx(
            () => Column(
              children: [
                SizedBox(
                  height: Get.height * 0.01,
                ),
                TextRow(
                  text: "Location",
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                          isDense: false,
                          iconSize: 40.0,
                          style: TextStyle(color: Color(0xFF008479)),
                          // isExpanded: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 1.0, horizontal: 30.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF6F6F6),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF3F3F3),
                          ),
                          dropdownColor: Color(0xFFF3F3F3),
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: dropdownItems),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                TextRow(
                  text: "Experience Level",
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField(
                          isDense: false,
                          iconSize: 40.0,
                          style: TextStyle(color: Color(0xFF008479)),
                          // isExpanded: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 1.0, horizontal: 30.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFF6F6F6),
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Color(0xFFF3F3F3),
                          ),
                          dropdownColor: Color(0xFFF3F3F3),
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: dropdownItems),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 600.w,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Min Salary",
                                style: TextStyle(color: Color(0xFF7D7D7D)),
                              ),
                              Text(
                                "Max Salary",
                                style: TextStyle(color: Color(0xFF7D7D7D)),
                              ),
                            ],
                          ),
                          // RangeSlider(
                          //   // values:
                          //   max: 500,
                          //   divisions: 6,
                          //   activeColor: orangeRed,
                          //   inactiveColor: Color(0xFF7D7D7D).withOpacity(0.3),
                          //   // labels: RangeLabels(
                          //   //
                          //   // ),
                          //   onChanged: (RangeValues values) {
                          //     setState(() {
                          //       // filterScreenController.currentRangeValues =
                          //       values;
                          //     });
                          //   },
                          // ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Currency ",
                          style: TextStyle(color: Color(0xFF7D7D7D)),
                        ),
                        // Container(
                        //   width: 200.w,
                        //   height: MediaQuery.of(context).size.height * 0.0350,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(
                        //         color: darkGreen,
                        //         // set border color
                        //         width: 0.0),
                        //     borderRadius: BorderRadius.circular(7),
                        //   ),
                        //   child: TextFromInputs(
                        //       // controller: filterScreenController.currency,
                        //       readOnly: true,
                        //       hintText: "Select",
                        //       onTap: () {
                        //         showCurrencyPicker(
                        //           context: context,
                        //           showFlag: true,
                        //           showCurrencyName: true,
                        //           showCurrencyCode: true,
                        //           onSelect: (Currency currency) {
                        //             // filterScreenController.currency.text =
                        //             currency.symbol;
                        //             print('Select currency: ${currency.name}');
                        //           },
                        //         );
                        //       },
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Job type",
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // filterScreenController.fullTimeColor.value =
                        //     !filterScreenController.fullTimeColor.value;
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 25.0),
                        decoration: BoxDecoration(
                          // color: filterScreenController.fullTimeColor.value  :
                          //     ? Color(0xFF008479)
                          color: Color(0xFFF6F6F6),
                          border: Border.all(
                            //  color: filterScreenController.fullTimeColor.value
                            //       ? Colors.transparent
                            color: Color(0xFFF6F6F6),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          "Full Time",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              // color: filterScreenController.fullTimeColor.value
                              //     ? Colors.white
                              color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // filterScreenController.partTimeColor.value =
                        //     !filterScreenController.partTimeColor.value;
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 25.0),
                        decoration: BoxDecoration(
                          // color: filterScreenController.partTimeColor.value
                          //     ? Color(0xFF008479)
                          color: Color(0xFFF6F6F6),
                          border: Border.all(
                            // color: filterScreenController.partTimeColor.value
                            //     ? Colors.transparent
                            color: Color(0xFFF6F6F6),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          "Part Time",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              // color: filterScreenController.partTimeColor.value
                              //     ? Colors.white
                              color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // filterScreenController.contractColor.value =
                        //     !filterScreenController.contractColor.value;
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 25.0),
                        decoration: BoxDecoration(
                          // color: filterScreenController.contractColor.value
                          //     ? Color(0xFF008479)
                          color: Color(0xFFF6F6F6),
                          border: Border.all(
                            // color: filterScreenController.contractColor.value
                            //     ? Colors.transparent
                            color: Color(0xFFF6F6F6),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          "Contract",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              // color: filterScreenController.contractColor.value
                              //     ? Colors.white
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // filterScreenController.freelanceColor.value =
                        //     !filterScreenController.freelanceColor.value;
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 25.0),
                        decoration: BoxDecoration(
                          // color: filterScreenController.freelanceColor.value
                          //     ? Color(0xFF008479)
                          color: Color(0xFFF6F6F6),
                          border: Border.all(
                            // color: filterScreenController.freelanceColor.value
                            //     ? Colors.transparent
                            color: Color(0xFFF6F6F6),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          "Freelance",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              // color: filterScreenController.freelanceColor.value
                              //     ? Colors.white
                              color: Colors.black),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // filterScreenController.remoteColor.value =
                        //     !filterScreenController.remoteColor.value;
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 25.0),
                        decoration: BoxDecoration(
                          // color: filterScreenController.remoteColor.value
                          //     ? Color(0xFF008479)
                          color: Color(0xFFF6F6F6),
                          border: Border.all(
                            // color: filterScreenController.remoteColor.value
                            //     ? Colors.transparent
                            color: Color(0xFFF6F6F6),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          "Remote",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                              // color: filterScreenController.remoteColor.value
                              //     ? Colors.white
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CommonButton(
                  buttonColor: Color(0xFFFF725E),
                  text: "Apply filters",
                  textColor: white,
                  borderSide: BorderSide.none,
                  buttonShadowColor: white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("UI/UX Design"), value: "UI/UX Design"),
      DropdownMenuItem(
          child: Text("Graphic Designer"), value: "Graphic Designer"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(
          child: Text("1 Year Experience"), value: "1 Year Experience"),
    ];
    return menuItems;
  }
}

class TextRow extends StatelessWidget {
  String text;
  TextRow({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
