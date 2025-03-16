import 'package:e_commerce/constnts.dart';
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_button_signup_login.dart';
import 'package:e_commerce/Featured/Auth/widgets/custom_devider.dart';
import 'package:e_commerce/Featured/Auth/widgets/custom_textfield_for_password.dart';
import 'package:e_commerce/Featured/Auth/widgets/custom_textfield_for_username.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
          child: Form(
            
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8.h,
                children: [
                  Spacer(),
                  Text(
                    'Register',
                    style: Styles.textStyle32,
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'Email',
                    style: Styles.textStyle14,
                  ),
                  CustomTextfieldForEmail(
                    emailcontroller: emailController,
                  ),
                  Text(
                    'Password',
                    style: Styles.textStyle14,
                  ),
                  CustomTextfieldforPassword(
                    passwordController: passwordController,
                  ),
                  Text(
                    'Confirm Password',
                    style: Styles.textStyle14,
                  ),
                  CustomTextfieldforPassword(
                    passwordController: confirmPasswordController,
                  ),
                  Spacer(),
                  CustomButton(
                    onTap: (){
                      if(_formKey.currentState!.validate()){

                      }
                    },
                      text: 'Register',
                      color: KprimaryColor,
                      width: MediaQuery.of(context).size.width),
                  CustomDevider(),
                  CustomButtonSignupLogin(
                      icon: FontAwesomeIcons.google,
                      text: 'Register with Google',
                      color: Color(0xff000000),
                      width: MediaQuery.of(context).size.width),
                  CustomButtonSignupLogin(
                      icon: FontAwesomeIcons.facebook,
                      text: 'Register with Facebook',
                      color: Color(0xff000000),
                      width: MediaQuery.of(context).size.width),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "already have an acount?",
                        style: Styles.textStyle12,
                      ),
                      TextButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.loginView);
                          },
                          child: Text('   Login',
                              style: Styles.textStyle12
                                  .copyWith(color: KprimaryColor))),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    height: 10.h,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
