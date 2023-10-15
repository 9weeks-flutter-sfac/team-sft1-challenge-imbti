import 'package:flutter/material.dart';
import 'package:imbti/models/mbti_model.dart';
import 'package:imbti/styles/app_colors.dart';
import 'package:imbti/styles/app_text_style.dart';

class StrengthChip extends StatelessWidget {
  final List<MBTIModel> mbtiList;
  final int index;
  final int strengthsIndex;
  const StrengthChip({
    super.key,
    required this.mbtiList,
    required this.index,
    required this.strengthsIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.p4Color),
      child: Center(
        child: Text(
          mbtiList[index].strengths[strengthsIndex],
          style: AppTextStyles.body14M(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
