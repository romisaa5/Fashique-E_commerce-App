import 'package:e_commerce/constnts.dart';
import 'package:flutter/material.dart';

class CustomTextfieldForEmail extends StatefulWidget {
  final TextEditingController emailcontroller;
  CustomTextfieldForEmail({super.key, required this.emailcontroller});
  @override
  State<CustomTextfieldForEmail> createState() =>
      _CustomTextfieldForEmailState();
}

class _CustomTextfieldForEmailState extends State<CustomTextfieldForEmail> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
         validator: (value) {
        if (value == null || value.isEmpty) {
          return 'The field is required';
        }
        if (!RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
            .hasMatch(value)) {
          return 'Enter a valid email';
        }
        return null;
      },
      controller: widget.emailcontroller,
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: const Icon(
          Icons.email,
          color: KprimaryColor,
        ),
      ),
    );
  }
}
