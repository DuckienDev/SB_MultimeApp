import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/widgets/button_sb.dart';

class SuccessEmail extends StatelessWidget {
  const SuccessEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(height: 1),
          Center(
            child: Column(
              children: [
                //img
                SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    'assets/sign_img/communications.png',
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Check your email to Verify account",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
                ),
                const SizedBox(height: 20),

                Text(
                  "We have sent you a link to confirm\nPlease check your email to complete your registration",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ButtonSB(
              onTap: () {},
              text: "Back to Sign in",
            ),
          ),
        ],
      ),
    );
  }
}
