import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/widgets/button_sb.dart';

class ReviewProfile extends StatelessWidget {
  const ReviewProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        // height: 280,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Image.asset('assets/profile/strongbody-061.png'),
            const SizedBox(height: 5),
            Text(
              'Not Reviews Yet',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Your order means a lot to the StrongBodycommunity.Order now to write the first review here.",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 270,
              child: ButtonSB(
                onTap: () {},
                text: 'Explore products and services →',
                color: const Color(0xffDB1F26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
