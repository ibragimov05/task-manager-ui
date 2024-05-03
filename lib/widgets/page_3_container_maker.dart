import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_manager/utils/product_sant.dart';
import 'package:task_manager/widgets/information_architecture_container.dart';

class Page3_container extends StatelessWidget {
  final String timeText1;
  final String timeText2;
  final String taskType;
  final String whoIsGoingWith;
  final String pathToImage;
  final String taskTime;
  final List<Color> linearGradientColor;
  final bool isSelected;

  Page3_container({
    super.key,
    required this.timeText1,
    required this.timeText2,
    required this.taskType,
    required this.whoIsGoingWith,
    required this.pathToImage,
    required this.taskTime,
    required this.linearGradientColor,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              timeText1,
              style: ProductSant.hoursStyle,
            ),
            SizedBox(
              height: 45.h,
            ),
            Text(
              timeText2,
              style: ProductSant.hoursStyle,
            ),
          ],
        ),
        SizedBox(
          width: isSelected == true ? 25.w : 55.w,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: InfoArchitecCont(
              taskType: taskType,
              whoIsGoingWith: whoIsGoingWith,
              pathToImage: pathToImage,
              taskTime: taskTime,
              linearGradientColor: [
                linearGradientColor[0],
                linearGradientColor[1],
              ],
            ),
          ),
        ),
      ],
    );
  }
}
