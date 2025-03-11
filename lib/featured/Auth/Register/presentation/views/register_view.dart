
import 'package:e_commerce/core/utils/app_router.dart';
import 'package:e_commerce/core/utils/styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_button_signup_login.dart';
import 'package:e_commerce/featured/Auth/Login/presentation/views/widgets/custom_devider.dart';
import 'package:e_commerce/featured/Auth/Login/presentation/views/widgets/custom_textfield_for_password.dart';
import 'package:e_commerce/featured/Auth/Login/presentation/views/widgets/custom_textfield_for_username.dart';
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
  final TextEditingController confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         resizeToAvoidBottomInset: true,
         
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 6,
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.arrow_back_ios),
                  Text(
                    'Register',
                    style: Styles.textStyle32,
                  ),
                  SizedBox(height: 5.h),
                  Text(
                    'User Name ',
                    style: Styles.textStyle14,
                  ),
                  CustomTextfieldForEmail(emailcontroller: emailController,),
                  Text(
                    'Password',
                    style: Styles.textStyle14,
                  ),
                  CustomTextfieldforPassword(passwordController: passwordController,),
                  Text(
                    'Confirm Password',
                    style: Styles.textStyle14,
                  ),
                  CustomTextfieldforPassword(passwordController: confirmPasswordController,),
                  Spacer(),
                  CustomButton(
                    
                      text: 'Register',
                      color: Color(0xff8875FF),
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
                                  .copyWith(color: Color(0xff8875FF)))),
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
