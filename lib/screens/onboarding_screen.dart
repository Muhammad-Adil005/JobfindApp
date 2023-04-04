import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/constants/constants.dart';
import 'package:jobfindapp/reusable_widgets/common_button.dart';
import 'package:jobfindapp/screens/userscreens/login_screen.dart';
import 'package:jobfindapp/screens/userscreens/signup_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(
      initialPage: 0,
    );

    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              onPageChanged: (int index) {
                // onBoardingScreenController.currentPage.value = index;
              },
              children: [
                OnBoardingSwipeScreen(
                  height: height,
                  image: 'assets/Interview4x.png',
                  title: "Find your dream job!",
                  subTitle:
                      "Get job recommendation, search and save job opportunity in your gadget",
                  buttonColor: white,
                  buttonText: "Skip",
                  buttonShadowColor: orangeRed.withOpacity(0.7),
                  buttonBorderSide: BorderSide(
                    width: 1.0,
                    color: Color(0xFFFF725E),
                  ),
                  buttonTextColor: Color(0xFFFF725E),
                  buttonOnTap: () {
                    // Get.off(()=> ChooseRoleScreen());
                  },
                ),
                OnBoardingSwipeScreen(
                  height: height,
                  image: 'assets/people4x.png',
                  title: "Job opportunities near you!",
                  subTitle:
                      "Get job recommendation, search and save job opportunity in your gadget",
                  buttonColor: white,
                  buttonText: "Skip",
                  buttonShadowColor: orangeRed.withOpacity(0.1),
                  buttonBorderSide: BorderSide(
                    width: 1.0,
                    color: Color(0xFFFF725E),
                  ),
                  buttonTextColor: Color(0xFFFF725E),
                  buttonOnTap: () {
                    //Get.off(()=> ChooseRoleScreen());
                  },
                ),
                OnBoardingSwipeScreen(
                  height: height,
                  image: 'assets/Resume4x.png',
                  title: "Easy use on your poket",
                  subTitle:
                      "Get job recommendation, search and save job opportunity in your gadget",
                  buttonColor: orangeRed,
                  buttonText: "Get started",
                  buttonShadowColor: white,
                  buttonBorderSide: BorderSide.none,
                  buttonTextColor: white,
                  buttonOnTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                    // Get.off(()=> ChooseRoleScreen());
                    // onBoardingScreenController.currentPage.value++;
                  },
                ),
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                heightFactor: MediaQuery.of(context).size.height * 0.09,
                child: SmoothPageIndicator(
                  controller: _controller,
                  // PageController
                  count: 3,
                  effect: SlideEffect(
                      dotHeight: 8.0,
                      dotWidth: 8.0,
                      spacing: 7.0,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}

class OnBoardingSwipeScreen extends StatelessWidget {
  const OnBoardingSwipeScreen({
    Key? key,
    required this.height,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.buttonColor,
    required this.buttonText,
    required this.buttonBorderSide,
    required this.buttonShadowColor,
    required this.buttonTextColor,
    required this.buttonOnTap,
  }) : super(key: key);

  final double height;
  final String image;
  final String title;
  final String subTitle;
  final Color buttonColor;
  final String buttonText;
  final BorderSide buttonBorderSide;
  final Color buttonShadowColor;
  final Color buttonTextColor;
  final Function buttonOnTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 0.18,
              ),
              Container(
                width: double.infinity,
                height: height * 0.3,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: subAndTitleColorOnboarding,
                          fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: subAndTitleColorOnboarding,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Spacer(),
              CommonButton(
                buttonColor: buttonColor,
                text: buttonText,
                textColor: buttonTextColor,
                borderSide: buttonBorderSide,
                buttonShadowColor: buttonShadowColor,
                onPressed: () {
                  buttonOnTap();
                },
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
