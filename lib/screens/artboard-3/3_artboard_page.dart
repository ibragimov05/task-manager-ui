import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/utils/product_sant.dart';
import 'package:task_manager/widgets/container_maker.dart';
import 'package:task_manager/widgets/page_3_container_maker.dart';

class Artboard_3 extends StatelessWidget {
  const Artboard_3({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        color: const Color(0xFFF8F6FF),
        padding: const EdgeInsets.only(left: 16, right: 16, top: 59),
        child: Column(
          children: [
            /// appBar container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 20,
                    ),
                  ),
                  Container(
                    width: 45.w,
                    height: 45.h,
                    child: Image.asset(
                      'assets/images/page_3/brat.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            /// days in container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.arrow_left,
                      size: 17.sp,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Mar',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xFF000000),
                      ),
                    ),
                  ],
                ),
                Text(
                  'April',
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: const Color(0xFF000000),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'May',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: const Color(0xFF000000),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Icon(
                      CupertinoIcons.arrow_right,
                      size: 17,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),

            /// days container maker
            Row(
              children: [
                ContainerMaker(
                    containerDate: '4', containerDay: 'Sat', isSelected: false),
                ContainerMaker(
                    containerDate: '5', containerDay: 'Sun', isSelected: true),
                ContainerMaker(
                    containerDate: '6', containerDay: 'Mon', isSelected: false),
                ContainerMaker(
                    containerDate: '7', containerDay: 'Tue', isSelected: false),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),

            /// tasks in container
            Row(
              children: [
                Text(
                  'Ongoing',
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: const Color(0xFF000000),
                  ),
                ),
              ],
            ),
            Page3_container(
              timeText1: '9AM',
              timeText2: '10AM',
              taskType: 'Information Architecture',
              whoIsGoingWith: 'Saber & Oro',
              pathToImage: 'assets/images/page_2/two_human.png',
              taskTime: '9.00 AM - 10.00 AM',
              linearGradientColor: const [
                Color(0xFFFFD29D),
                Color(0xFFFF9E2D),
              ],
              isSelected: false,
            ),
            SizedBox(
              height: 45.h,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '10AM',
                    style: ProductSant.hoursStyle,
                  ),
                  const Spacer(),
                  Container(
                    width: 10.w,
                    height: 10.h,
                    decoration: const BoxDecoration(
                      color: Color(0xFF8B78FF),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  Container(
                    height: 3.h,
                    width: 285.w,
                    // width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF8B78FF),
                          Color(0xFF5451D60),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Page3_container(
              timeText1: '11AM',
              timeText2: '12:00PM',
              taskType: 'Software Testing',
              whoIsGoingWith: 'Saber & Mike',
              pathToImage: 'assets/images/page_2/two_human.png',
              taskTime: '11.00AM - 12.00 PM',
              linearGradientColor: const [
                Color(0xFFB1EEFF),
                Color(0xFF29BAE2),
              ],
              isSelected: true,
            ),
            SizedBox(
              height: 45.h,
            ),
            Page3_container(
              timeText1: '1PM',
              timeText2: '3PM',
              taskType: 'Mobile App Design',
              whoIsGoingWith: 'John',
              pathToImage: 'assets/images/page_2/two_human.png',
              taskTime: '01.00PM - 03.00PM',
              linearGradientColor: const [
                Color(0xFFFFA0BC),
                Color(0xFFFF1B5E),
              ],
              isSelected: false,
            ),
          ],
        ),
      ),
    );
  }
}
