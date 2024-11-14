import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/widgets/button_mtm.dart';


class ImportContactsScreen extends StatelessWidget {
  const ImportContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Pick 10 best friends & clients',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Invite a friend to continue',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.red),
                  hintText: 'Search your contacts',
                  hintStyle: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 12),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(
                'assets/sign_img/Group01.png',
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Import your contacts',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Strongbody never texts friends on your behalf',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ButtonSB(
              onTap: () {},
              text: "Import",
            )
          ],
        ),
      ),
    );
  }
}
