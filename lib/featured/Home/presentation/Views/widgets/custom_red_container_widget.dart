import 'package:e_commerce/Featured/Home/presentation/models/product.dart';
import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomcontainerWidget extends StatelessWidget {
  const CustomcontainerWidget(
      {super.key, required this.product, required this.value, required this.color});
  final Product product;
  final String value;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 40.w,
          height: 24.h,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(24)),
            child: Center(
                child: Text(
              value,
              style: Styles.textStyle12.copyWith(color: KbackgroundColor),
              textAlign: TextAlign.center,
            )),
          ),
        ),
      ),
    );
  }
}
