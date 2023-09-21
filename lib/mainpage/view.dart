import 'package:findjop/core/theme/appcolors.dart';
import 'package:findjop/mainpage/pages/appliedpage.dart';
import 'package:findjop/mainpage/pages/homepage.dart';
import 'package:findjop/mainpage/pages/messagepage.dart';
import 'package:findjop/mainpage/pages/profilePage.dart';
import 'package:findjop/mainpage/pages/savedpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int currentIndex = 0;
  final List<Widget> _widgetOption = const [
    HomePage(),
    MessagePage(),
    AppliedPage(),
    SavedPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOption[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 15,
            selectedItemColor: AppColor.primaryColor500,
            unselectedFontSize: 12,
            unselectedItemColor: AppColor.naturalColor400,
            items: [
              BottomNavigationBarItem(
                activeIcon: SvgPicture.asset(
                  'assets/icons/homefill.svg',
                  width: 24,
                  height: 24,
                  fit: BoxFit.scaleDown,
                ),
                icon: SvgPicture.asset(
                  'assets/icons/inactivehome.svg',
                  width: 24,
                  height: 24,
                  fit: BoxFit.scaleDown,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/icons/messagefill.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  icon: SvgPicture.asset(
                    'assets/icons/message.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  label: 'Message'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/icons/appliedfill.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  icon: SvgPicture.asset(
                    'assets/icons/briefcase.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  label: 'Applied'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/icons/savedfill.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  icon: SvgPicture.asset(
                    'assets/icons/save.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  label: 'Saved'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/icons/profilefill.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  icon: SvgPicture.asset(
                    'assets/icons/profile.svg',
                    width: 24,
                    height: 24,
                    fit: BoxFit.scaleDown,
                  ),
                  label: 'Profile')
            ]),
      ),
    );
  }
}
