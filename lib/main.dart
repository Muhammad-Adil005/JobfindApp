import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobfindapp/screens/splashScreen.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Job Find App',
            theme: ThemeData(
              primaryColor: orangeRed,
              accentColor: orangeRed,
              fontFamily: 'Poppins',
            ),
            home: SplashScreen(),
            //SettingScreen(),
            //UserVideoCallScreen(),
            //UserChatScreen(),
            //CompanyVideoCallScreen(),
            //CompanyChatScreen(),
            //ChatScreen(),
            //OnBoardingScreen(),
            //SplashScreen(),
            //CandidateScreen(),
            //ApplicantJobs(),
            //PostNewJob4(),
            //PostNewJob3(),
            //PostNewJob2(),
            //PostNewJob1(),
            //PostNewJob2(),
            //CompanyJobPage(),
            //CompanyHomePage(),
            //CompanyHome(),
            //EditCompanyProfile(),
            //AddLocationScreen(),
            //PaymentScreen(),
            //BuyCoinScreen(),
            //SubscriptionScreen(),
            //EditCompanyProfileScreen(),
            //AddProfielScreen(),
            //SettingScreen(),
            //CompanyJobsScreen(),
            //CompanyHomeScreen(),
            //VideoCallScreen(),
            //UploadResumeScreen(),
            //JobdetailScreen5(),
            //JobdetailScreen4(),
            //filterScreen(),
            //JobdetailScreen2(),
            //JobdetailScreen1(),
            //AllJobScreen(),
            //RecommendedJobScreen(),
            //AllCompaniesScreen(),
            //HomeScreen(),
            //EditProfileScreen(),
            //EditExperienceScreen2(),
            //EditExperienceScreen2(),
            //EditExperienceScreen1(),
            //AddExperienceScreen(),
            //EditEducationScreen(),
            //AddEducationScreen(),
            //OTPSuccessful(),
            //GenerateOTP(),
            //OTPScreen(),
            //ForgotPasswordScreen(),
            //LoginScreen(),
            //SignUpScreen(),
            //OnBoardingScreen3(),
            //OnBoardingScreen2(),
            //OnBoardingScreen1(),
          );
        });
  }
}
