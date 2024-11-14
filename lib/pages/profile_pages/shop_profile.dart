import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/widgets/button_mtm.dart';

class ShopProfile extends StatelessWidget {
  const ShopProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            Image.asset('assets/profile/strongbody-061.png'),
            const SizedBox(height: 5),
            Text(
              'Not Product Yet',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Seller not sold any products yet. If she does in the future, the products will appear here.",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 270,
              child: ButtonSB(
                onTap: () {},
                text: 'Active StrongBodyShop here →',
                color: const Color(0xffDB1F26),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
