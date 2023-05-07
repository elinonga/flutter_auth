import 'package:flutter/material.dart';
import 'package:login/widgets/headers/image_header.dart';
import 'package:login/widgets/headers/text_header.dart';

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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 10),

                // Clinic Image
                CustomImageHeader(
                  imgUrl: "assets/images/sign.png",
                ),
                SizedBox(height: 35),

                // Sign Up - Text
                CustomTextHeader(
                  header: "Sign Up",
                ),
                SizedBox(height: 20),
              ]),
        )
      ]),
    );
  }
}
