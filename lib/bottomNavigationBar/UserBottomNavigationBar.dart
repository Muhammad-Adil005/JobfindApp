import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/settings.dart';
import '../screens/userscreens/userchatscreen/chat_screen.dart';
import '../screens/userscreens/userhomescreen/all_jobs.dart';
import '../screens/userscreens/userhomescreen/home_screen.dart';
import '../screens/userscreens/userhomescreen/recommended_jobs.dart';

class UserbottomNavigationBar extends StatefulWidget {
  const UserbottomNavigationBar({Key? key}) : super(key: key);

  @override
  _UserbottomNavigationBarState createState() =>
      _UserbottomNavigationBarState();
}

class _UserbottomNavigationBarState extends State<UserbottomNavigationBar> {
  @override
  void initState() {
    super.initState();
  }

  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    RecommendedJobScreen(),
    UserChatScreen(),
    AllJobScreen(),
    HomeScreen(),
    SettingScreen(),
    // ProfileScreenPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: false,
        unselectedItemColor: Color(0xff7B7B7B),
        selectedItemColor: Color(0xff7B7B7B),
        backgroundColor: Color(0xffFF725E),
        onTap: _onTap,
        currentIndex: selectedIndex,
        // selectedLabelStyle: GoogleFonts.poppins(fontSize: 10),

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home, size: 20),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text, size: 20), label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.bag,
                size: 20,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                size: 20,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                size: 20,
              ),
              label: ""),
        ],
      ),
      body: _widgetOptions.elementAt(selectedIndex),
    );
  }

  void _onTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
