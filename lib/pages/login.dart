import 'package:flutter/material.dart';
import 'package:login/widgets/headers/image_header.dart';
import 'package:login/widgets/inputs/password_input.dart';
import 'package:login/widgets/buttons/save_button.dart';
import 'package:login/widgets/headers/text_header.dart';
import 'package:login/widgets/inputs/text_input_field.dart';
import 'package:login/widgets/text_link.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),

            // Clinic Image
            const CustomImageHeader(
              imgUrl: "assets/images/clinic_logo.png",
            ),
            const SizedBox(height: 35),

            // Login - Text
            const CustomTextHeader(
              header: "Login",
            ),
            const SizedBox(height: 20),

            // Email TextField
            const CustomTextInputField(
              label: "Email",
            ),

            const SizedBox(height: 20),

            // Password TextField
            const PasswordInput(
              label: "Password",
            ),

            const SizedBox(height: 10),

            // Forgot Password
            const Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: CustomTextLink(
                  label: "Forgot Password?",
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Login Button
            const CustomSaveButton(
              label: "Login",
            ),
            const SizedBox(height: 20),
            const Text("OR"),
            const SizedBox(height: 20),

            // Login with Google - Button
            _buildGoogleSignInButton(),
            const SizedBox(height: 20),

            // New to clinic? Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("New to Clinic?"),
                CustomTextLink(
                  label: "Register",
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        )),
      ],
    ));
  }

  Widget _buildGoogleSignInButton() {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        side: const BorderSide(color: Colors.grey),
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Image(image: AssetImage("assets/images/google_logo.png"), height: 30),
          SizedBox(width: 10),
          Text("Login with Google"),
        ],
      ),
    );
  }
}
