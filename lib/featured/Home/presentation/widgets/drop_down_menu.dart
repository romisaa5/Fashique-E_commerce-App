import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final List<String> items;
  final String hinttext;

  DropDown({required this.items, required this.hinttext});

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      stepWidth: 138,
      child: IntrinsicHeight(
        child: DropdownButtonFormField<String>(
          dropdownColor: Colors.white,
          value: selectedValue,
          decoration: InputDecoration(
            hintText: widget.hinttext,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          ),
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
        ),
      ),
    );
  }
}
