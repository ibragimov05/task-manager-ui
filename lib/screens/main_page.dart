import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/screens/artboard-2/2_artboard_page.dart';
import 'package:task_manager/screens/artboard-3/3_artboard_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;

  final pages = const [
    Artboard_2(),
    Artboard_3(),
  ];

  changePage(int index) => setState(() => _selectedPage = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F6FF),
      body: Column(
        children: [
          Expanded(child: pages[_selectedPage]),

          /// manual made bottom navigation bar
          Container(
            width: double.infinity,
            height: 88.h,
            padding: const EdgeInsets.all(35),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24.r),
                topLeft: Radius.circular(24.r),
              ),
              color: const Color(0xFFFFFFFF),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => changePage(0),
                  child: SvgPicture.asset(
                    'assets/icons/navigation_bar/home${_selectedPage == 0 ? '' : '_un'}.svg',
                  ),
                ),
                GestureDetector(
                  onTap: () => changePage(1),
                  child: SvgPicture.asset(
                    'assets/icons/navigation_bar/calendar${_selectedPage == 1 ? '' : '_un'}.svg',
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/navigation_bar/chat.svg',
                ),
                SvgPicture.asset(
                  'assets/icons/navigation_bar/profile.svg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
