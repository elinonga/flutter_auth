import 'package:flutter/material.dart';
import 'package:login/pages/login.dart';
import 'package:login/widgets/headers/image_header.dart';
import 'package:login/widgets/headers/text_header.dart';
import 'package:login/widgets/inputs/password_input.dart';
import 'package:login/widgets/inputs/text_input_field.dart';
import 'package:login/widgets/text_link.dart';
import 'package:flutter/gestures.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "Register",
      )),
      body: ListView(children: [
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 10),

            // Clinic Image
            const CustomImageHeader(
              imgUrl: "assets/images/sign.png",
            ),
            const SizedBox(height: 20),

            // Sign Up - Text
            const CustomTextHeader(
              header: "Sign Up",
            ),
            const SizedBox(height: 20),

            // Full Name TextField
            const CustomTextInputField(
              label: "Full Name",
            ),
            const SizedBox(height: 20),

            // Email TextField
            const CustomTextInputField(
              label: "Email",
            ),
            const SizedBox(height: 20),

            // Mobile TextField
            const CustomTextInputField(
              label: "Mobile No.",
            ),
            const SizedBox(height: 20),

            // Password
            const PasswordInput(
              label: "Password",
            ),
            const SizedBox(height: 20),

            // Confirm Password
            const PasswordInput(
              label: "Confirm Password",
            ),
            const SizedBox(height: 20),

            // Terms and Conditions - Privacy Policy
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                        text: 'By signing up, you\'re agreeing to our ',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle the terms and conditions link tap here
                        },
                    ),
                    const TextSpan(
                        text: ' and ',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    TextSpan(
                      text: ' Privacy Policy',
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle the privacy policy link tap here
                        },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            //
          ]),
        )
      ]),
    );
  }
}
