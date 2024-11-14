import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/widgets/button_mtm.dart';

class ServiecsProfile extends StatelessWidget {
  const ServiecsProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Image.asset('assets/profile/strongbody-061.png'),
            const SizedBox(height: 5),
            Text(
              'Not Services Yet',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Seller hasn't created any services yet. If she sold something it would be here.",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 120,
              child: ButtonSB(
                onTap: () {},
                text: 'New Service',
                color: const Color(0xffDB1F26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
