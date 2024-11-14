import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/pages/sign_pages/forgot_pw_page.dart';
import 'package:strong_body_app/pages/sign_pages/sign_up_page.dart';
import 'package:strong_body_app/widgets/button_mtm.dart';
import 'package:strong_body_app/widgets/sign_widgets/suggest_text.dart';
import 'package:strong_body_app/widgets/sign_widgets/text_field_sign.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isChecked = false;
  bool _stateInput = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      //Sign in
    } else {
      setState(() {
        _stateInput = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign in',
          style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            //Email
            TextFieldSign(
              controller: _emailController,
              hintText: 'Enter Email',
              color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
            ),
            _stateInput
                ? const SizedBox(height: 1)
                : SuggestText(
                    text: 'This email has been registered',
                    color: Colors.red,
                  ),
            //Password
            TextFieldSign(
              controller: _pwController,
              hintText: 'Password',
              obscureText: true,
              color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
            ),
            _stateInput
                ? const SizedBox(height: 1)
                : SuggestText(
                    text: 'This password is invalid',
                    color: Colors.red,
                  ),
            //Check box fw
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: isChecked,
                  activeColor: Colors.black,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
                const Text("Remember me"),
              ],
            ),
            const SizedBox(height: 10),
            //Button Sign in
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ButtonSB(
                text: 'Sign in',
                onTap: () {
                  _validateAndSubmit();
                },
              ),
            ),
            const SizedBox(height: 20),
        
            //Forgot Pw
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FgPassPage()));
              },
              child:  Text(
                'Forgot Password ?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14.sp,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a member yet?'),
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
      ),
    );
  }
}
