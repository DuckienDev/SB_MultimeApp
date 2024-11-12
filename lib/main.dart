import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/pages/dating_pages/home_dating_page.dart';
import 'package:strong_body_app/pages/dating_pages/welcome_dating_page.dart';
import 'package:strong_body_app/pages/profile_pages/profile_page.dart';
import 'package:strong_body_app/pages/profile_pages/update_profile.dart';
import 'package:strong_body_app/pages/sign_pages/check_phone_page.dart';
import 'package:strong_body_app/pages/sign_pages/import_contacts_page.dart';
import 'package:strong_body_app/pages/sign_pages/sign_in_page.dart';
import 'package:strong_body_app/pages/sign_pages/success_email.dart';
import 'package:strong_body_app/pages/sign_pages/success_phone.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeDatingPage(),
        );
      },
    );
  }
}
