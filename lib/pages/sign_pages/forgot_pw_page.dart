import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/pages/sign_pages/sign_up_page.dart';
import 'package:strong_body_app/widgets/button_mtm.dart';
import 'package:strong_body_app/widgets/sign_widgets/text_field_sign.dart';

class FgPassPage extends StatefulWidget {
  const FgPassPage({super.key});

  @override
  State<FgPassPage> createState() => _FgPassPageState();
}

class _FgPassPageState extends State<FgPassPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot password',
          style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          TextFieldSign(
            controller: _emailController,
            hintText: 'Enter Email',
            obscureText: false,
            color: const Color(0xff94A3B8),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ButtonSB(
              text: 'Continue',
              onTap: () {},
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already a member?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
