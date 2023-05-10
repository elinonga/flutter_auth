import 'package:flutter/material.dart';
import 'package:login/widgets/buttons/save_button.dart';
import 'package:login/widgets/headers/image_header.dart';
import 'package:login/widgets/headers/text_header.dart';
import 'package:login/widgets/inputs/text_input_field.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: ListView(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 10),

                // Forgot Pwd Image
                CustomImageHeader(
                  imgUrl: "assets/images/banners/forgot.jpg",
                ),
                SizedBox(height: 35),

                // Forgot Pwd - Text
                CustomTextHeader(
                  header: "Forgot Password?",
                ),
                SizedBox(height: 25),

                // Encouraging words
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                    "It happens to the best of us. Please enter the email address linked to your account, and we'll guide you through the password reset process.",
                  ),
                ),
                SizedBox(height: 25),

                // Email TextField
                CustomTextInputField(
                  label: "Enter your Email",
                ),
                SizedBox(height: 20),

                // Submit Button
                CustomSaveButton(label: 'Submit'),
                SizedBox(height: 20),
              ],
            )),
          ],
        ));
  }
}
