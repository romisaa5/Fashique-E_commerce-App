import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/featured/onboarding/presentation/views/widgets/custom_pageIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          spacing: 25,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset('assets/images/onboard3.png'),
            PageIndicator(currentIndex: 2, totalPages: 3),
            Text('Orgonaize your tasks', style: Styles.textStyle32),
            Text(
              'You can organize your daily tasks by adding your tasks into separate categories',
              style: Styles.textStyle16,
              textAlign: TextAlign.center,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  width: 90.w,
                  text: 'Back',
                  color: Color(0xff000000),
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.secondScreen);
                  },
                ),
                CustomButton(
                  width: 151.w,
                  text: 'GETSTATED',
                  color: KprimaryColor,
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.welcomeView);
                  },
                )
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
