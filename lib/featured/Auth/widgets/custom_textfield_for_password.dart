import 'package:e_commerce/constnts.dart';
import 'package:flutter/material.dart';

class CustomTextfieldforPassword extends StatefulWidget {
  final TextEditingController passwordController;
 const CustomTextfieldforPassword({super.key, required this.passwordController});

  @override
  State<CustomTextfieldforPassword> createState() =>
      _CustomTextfieldforPasswordState();
}

class _CustomTextfieldforPasswordState
    extends State<CustomTextfieldforPassword> {
  bool isshown = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
       validator: (value) {
        if (value == null || value.isEmpty) {
          return 'The field is required';
        }
        if (value.length < 8) {
          return 'Password must be at least 8 characters';
        }
        if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$').hasMatch(value)) {
          return 'Password must contain at least one letter and one number';
        }
        return null;
      },
      controller: widget.passwordController,
      obscureText: isshown,
      decoration: InputDecoration(
        suffixIcon: isshown
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isshown = !isshown;
                  });
                },
                icon: Icon(Icons.visibility))
            : IconButton(
                onPressed: () {
                  setState(() {
                    isshown = !isshown;
                  });
                },
                icon: Icon(Icons.visibility_off)),
        hintText: 'Password',
        prefixIcon: const Icon(Icons.lock, color: KprimaryColor),
      ),
    );
  }
}
