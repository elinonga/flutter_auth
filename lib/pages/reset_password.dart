import 'package:flutter/material.dart';
import 'package:login/widgets/buttons/save_button.dart';
import 'package:login/widgets/headers/image_header.dart';
import 'package:login/widgets/headers/text_header.dart';
import 'package:login/widgets/inputs/text_input_field.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: const [
              // Reset Password Image
              CustomImageHeader(
                imgUrl: "assets/images/banners/reset.png",
              ),

              // Reset Password - Text
              CustomTextHeader(
                header: "Reset Password",
              ),
              SizedBox(height: 25),

              // Old Password TextField
              CustomTextInputField(
                label: "Old Password",
              ),
              SizedBox(height: 20),

              // New Password TextField
              CustomTextInputField(
                label: "New Password",
              ),
              SizedBox(height: 20),

              // Confirm New Password TextField
              CustomTextInputField(
                label: "Confirm New Password",
              ),
              SizedBox(height: 20),

              // Submit Button
              CustomSaveButton(
                label: 'Submit',
              ),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
