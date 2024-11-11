import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldSign extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final bool readOnly;
  final Color color;
  final int maxLines;
  final VoidCallback? showCountryDialog;
  final TextInputType? keyboardType;

  const TextFieldSign({
    super.key,
    required this.controller,
    required this.hintText,
    this.obscureText = false,
    this.readOnly = false,
    this.maxLines = 1,
    required this.color,
    this.showCountryDialog,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffF1F2F4),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: color),
        ),
        height: 50.sp,
        width: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: TextFormField(
              obscureText: obscureText,
              maxLines: maxLines,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return '';
                }
                return null;
              },
              controller: controller,
              readOnly: readOnly,
              onTap: readOnly ? () => showCountryDialog?.call() : null,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffF1F2F4)),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffF1F2F4)),
                  borderRadius: BorderRadius.circular(10),
                ),
                border: InputBorder.none,
                hintText: hintText,
                hintStyle:
                    TextStyle(fontSize: 14.sp, color: const Color(0xff687588)),
              ),
              keyboardType: keyboardType,
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
        ),
      ),
    );
  }
}
