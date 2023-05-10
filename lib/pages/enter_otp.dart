import 'package:flutter/material.dart';
import 'package:login/widgets/buttons/save_button.dart';
import 'package:login/widgets/headers/image_header.dart';
import 'package:login/widgets/headers/text_header.dart';
import 'package:login/widgets/inputs/text_input_field.dart';

class EnterOTPPage extends StatefulWidget {
  const EnterOTPPage({Key? key}) : super(key: key);

  @override
  State<EnterOTPPage> createState() => _EnterOTPPageState();
}

class _EnterOTPPageState extends State<EnterOTPPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            // OTP Image
            CustomImageHeader(
              imgUrl: "assets/images/banners/otp.png",
            ),
            SizedBox(height: 35),

            // Enter OTP - Text
            CustomTextHeader(
              header: "Enter OTP",
            ),
            SizedBox(height: 25),

            // OTP Text words
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Text(
                "A 4 digit code has been sent to happens to +255 754 000 000",
              ),
            ),
            SizedBox(height: 25),

            // OTP TextField
            CustomTextInputField(
              label: "Enter OTP",
            ),
            SizedBox(height: 20),

            // Submit Button
            CustomSaveButton(label: 'Submit'),
            SizedBox(height: 20),
          ],
        )
      ],
    ));
  }
}
