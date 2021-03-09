import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final Widget prefixIcon;
  final Widget suffixIcon;

  AppTextField({this.label, this.prefixIcon, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(primaryColor: Colors.white),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12),
          filled: true,
          hintText: label,
          hintStyle: TextStyle(
            fontSize: 15,
            color: Colors.white
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: Color(0xFF596A77),
        ),
      ),
    );
  }
}
