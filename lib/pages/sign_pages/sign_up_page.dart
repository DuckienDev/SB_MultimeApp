import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:strong_body_app/pages/sign_pages/sign_in_page.dart';
import 'package:strong_body_app/widgets/button_mtm.dart';
import 'package:strong_body_app/widgets/sign_widgets/suggest_text.dart';
import 'package:strong_body_app/widgets/sign_widgets/text_field_sign.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _stateInput = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();

  _validateAndSubmit() {
    if (_formKey.currentState!.validate()) {
      //Sign Up
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
        title: Image.asset('assets/logo02.png'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20),
              //User Name
              TextFieldSign(
                controller: _userNameController,
                hintText: 'Public username',
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),

              SuggestText(
                text: _stateInput
                    ? "You can't change your username, so choose wisely"
                    : "This account name has already been registered.",
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              //Country
              TextFieldSign(
                controller: _countryController,
                hintText: 'Country',
                readOnly: true,
                showCountryDialog: _showCountryDialog,
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              _stateInput
                  ? const SizedBox(height: 1)
                  : SuggestText(
                      text: 'Inappropriate occupation',
                      color: Colors.red,
                    ),
              //Occupation
              TextFieldSign(
                controller: _occupationController,
                hintText: 'Enter Occupation',
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              SuggestText(
                text: _stateInput
                    ? "You'll see why soon. You can change it later"
                    : 'Inappropriate occupation.',
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
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
              //Pw
              TextFieldSign(
                controller: _pwController,
                hintText: 'Password',
                obscureText: true,
                color: _stateInput ? const Color(0xff94A3B8) : Colors.red,
              ),
              _stateInput
                  ? const SizedBox(height: 1)
                  : SuggestText(
                      text: "This password is invalid",
                      color: Colors.red,
                    ),

              SuggestText(
                text: "Min 8 characters, 1 uppercase, 1 lowercase, 1 number",
                color: const Color(0xff94A3B8),
              ),
              const SizedBox(height: 20),
              //Button Sign Up
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ButtonSB(
                  onTap: _validateAndSubmit,
                  text: 'Sign up',
                  color: const Color(0xffDA2126),
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
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                    child: const Text(
                      'Sign in',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Color(0xffDA2126),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style:  TextStyle(fontSize: 13.sp, color: Colors.black),
                    children: [
                      const TextSpan(
                          text: "By joining, you agree to the StrongBody "),
                      WidgetSpan(
                        child: InkWell(
                          onTap: () {
                            print("Terms of Service tapped");
                          },
                          child: const Text(
                            "Terms of Service",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const TextSpan(
                          text:
                              " and to occasionally receive emails from us. Please read our "),
                      WidgetSpan(
                        child: InkWell(
                          onTap: () {
                            print("Privacy policy tapped");
                          },
                          child: const Text(
                            "Privacy policy",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const TextSpan(
                          text: " to learn how we use your personal data."),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//Show selected country
  void _showCountryDialog() {
    final List<String> countries = [
      'Vietnam',
      'USA',
      'Japan',
      'Germany',
      'Chinna',
    ];

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: countries.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/vn.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(countries[index]),
                      onTap: () {
                        _countryController.text = countries[index];
                        Navigator.pop(context);
                      },
                    ),
                    const Divider(),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
