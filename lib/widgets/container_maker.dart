import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerMaker extends StatelessWidget {
  final String containerDate;
  final String containerDay;
  final bool isSelected;

  ContainerMaker({
    super.key,
    required this.containerDate,
    required this.containerDay,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      margin: const EdgeInsets.only(left: 16.5),
      width: 70.w,
      height: 120.h,
      decoration: BoxDecoration(
        boxShadow: isSelected == true
            ? [
                BoxShadow(
                  color: const Color(0xFF5451D6),
                  spreadRadius: 1.r,
                  blurRadius: 100.r,
                ),
              ]
            : null,
        borderRadius: BorderRadius.circular(43.r),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isSelected == true
              ? [
                  const Color(0xFF8B78FF),
                  const Color(0xFF5451D6),
                ]
              : [
                  const Color(0xFFFFFFFF),
                  const Color(0xFFFFFFFF),
                ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            containerDate,
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w700,
              fontSize: 36.sp,
              color: isSelected == true
                  ? const Color(0xFFFFFFFF)
                  : const Color(0xFF000000),
            ),
          ),
          Text(
            containerDay,
            style: GoogleFonts.ptSans(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: isSelected == true
                  ? const Color(0xFFFFFFFF)
                  : const Color(0xFF000000),
            ),
          ),
        ],
      ),
    );
  }
}
