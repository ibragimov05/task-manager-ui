import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

/// widget to create containers for grid view
class GridViewContainer extends StatelessWidget {
  final double cWidth;
  final double cHeight;
  final String number;
  final String status;
  final List<Color> linearGreadiantColor;

  GridViewContainer({
    super.key,
    required this.cWidth,
    required this.cHeight,
    required this.number,
    required this.status,
    required this.linearGreadiantColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      height: cHeight.h,
      width: cWidth.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            linearGreadiantColor[0],
            linearGreadiantColor[1],
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w700,
              fontSize: 36.sp,
              color: const Color(0xFFFFFFFF),
            ),
          ),
          Text(
            status,
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
