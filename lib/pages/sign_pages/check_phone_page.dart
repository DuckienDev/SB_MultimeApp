import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/widgets/button_sb.dart';
import 'package:strong_body_app/widgets/sign_widgets/text_field_sign.dart';

class CheckPhonePage extends StatefulWidget {
  const CheckPhonePage({super.key});

  @override
  State<CheckPhonePage> createState() => _CheckPhonePageState();
}

class _CheckPhonePageState extends State<CheckPhonePage> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                "What is Your \nPhone Number ?",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "This information helps us verify your account to \nmake it more secure.",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              //Number phone
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 50,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 4,
                      child: TextFieldSign(
                        controller: _phoneController,
                        hintText: 'Your number phone',
                        color: const Color(0xff94A3B8),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              //button
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ButtonSB(
                      onTap: () {},
                      text: 'Skip',
                      color: const Color(0xff979797),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                      flex: 4,
                      child: ButtonSB(
                        onTap: () {},
                        text: 'Countinue',
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
