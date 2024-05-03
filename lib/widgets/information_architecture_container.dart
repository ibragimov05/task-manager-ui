import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoArchitecCont extends StatelessWidget {
  final String taskType;
  final String whoIsGoingWith;
  final String pathToImage;
  final String taskTime;
  final List<Color> linearGradientColor;

  const InfoArchitecCont({
    super.key,
    required this.taskType,
    required this.whoIsGoingWith,
    required this.pathToImage,
    required this.taskTime,
    required this.linearGradientColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 14, bottom: 12, right: 20, left: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        gradient: LinearGradient(
          colors: [
            linearGradientColor[0],
            linearGradientColor[1],
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            taskType,
            style: GoogleFonts.ptSans(
                fontWeight: FontWeight.w700,
                fontSize: 16.sp,
                color: const Color(0xFFFFFFFF)),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            whoIsGoingWith,
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w400,
              fontSize: 10.sp,
              color: const Color(0xFFFFFFFF),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                pathToImage,
              ),
              Text(
                taskTime,
                style: GoogleFonts.ptSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 10.sp,
                  color: const Color(0xFFFFFFFF),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
