import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      this.onTap,
      required this.width, required this.borderreduis});
  final String text;
  final Color color;
  final double width;
  final double borderreduis;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: 48.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderreduis), color: color),
          child: Center(
            child: Text(
              text,
              style: Styles.textStyle16.copyWith(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
