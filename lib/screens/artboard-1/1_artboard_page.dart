import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/screens/main_page.dart';

class Artboard_1 extends StatelessWidget {
  const Artboard_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF644ffe).withOpacity(1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/page_1/background.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              height: 470.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              padding: const EdgeInsets.all(9),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/page_1/icon1.svg',
                  ),
                  SizedBox(
                    height: 110.h,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Text(
                          'Building Better',
                          style: GoogleFonts.ptSans(
                            fontSize: 37.0.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2F394B),
                          ),
                        ),
                        Text(
                          'Workplaces',
                          style: GoogleFonts.ptSans(
                            fontSize: 37.0.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF2F394B),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Column(
                          children: [
                            Text(
                              'Create a unique emotional story that',
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                                color: const Color(0xFF8D8D8D),
                              ),
                            ),
                            Text(
                              'describes better than words',
                              style: GoogleFonts.ptSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                                color: const Color(0xFF8D8D8D),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 42.h,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) {
                          return const MainPage();
                        }),
                      );
                    },
                    child: Container(
                      width: 295.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF5451D6),
                            blurRadius: 15.r,
                            offset: const Offset(0, 10),
                            // spreadRadius: 10,
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFF8B78FF),
                            Color(0xFF5451D6),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.ptSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
