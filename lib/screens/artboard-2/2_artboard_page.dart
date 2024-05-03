import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/widgets/grid_view.dart';
import 'package:task_manager/widgets/information_architecture_container.dart';

/// page 2
class Artboard_2 extends StatelessWidget {
  const Artboard_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF8F6FF),
      padding: const EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),

          /// appbar container
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Monday',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color(0xFF7F7F7F),
                      ),
                    ),
                    Text(
                      '25 October',
                      style: GoogleFonts.ptSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp,
                        color: const Color(0xFF040415),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 45.w,
                      height: 45.h,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 1.5),
                      ),
                      child: SvgPicture.asset('assets/icons/page_2/search.svg'),
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    SizedBox(
                      width: 45.w,
                      height: 45.h,
                      child: Image.asset('assets/icons/page_2/brat.png'),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 31.h,
          ),

          /// information architecture container
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Surf.',
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 28.sp,
                    color: const Color(0xFF2F394B),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  '5 Tasks are predning',
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: const Color(0xFF8D8D8D),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const InfoArchitecCont(
                  taskType: 'Information Architecture',
                  whoIsGoingWith: 'Saber & Oro',
                  pathToImage: 'assets/images/page_2/two_human.png',
                  taskTime: 'Now',
                  linearGradientColor: [
                    Color(0xFF8B78FF),
                    Color(0xFF5451D6),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),

                /// monthly preview
                Text(
                  'Monthly Preview',
                  style: GoogleFonts.ptSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: const Color(0xFF000000),
                  ),
                ),

                /// griw view creator
                SizedBox(
                  height: 340.h,
                  width: double.infinity,
                  child: GriwViewCreator(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
