import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuccessPhone extends StatelessWidget {
  const SuccessPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                //img
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    'assets/sign_img/Frame02.png',
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Phone number identified successfully",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
                const SizedBox(height: 20),

                Text(
                  "You have successfully verified the phone number for this\naccount.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: const Color(0xff898A8D)),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          //Back Signn in
        ],
      ),
    );
  }
}
