import 'package:flutter/material.dart';
import 'package:login/pages/register.dart';

class CustomTextLink extends StatelessWidget {
  const CustomTextLink({Key? key, required this.label, required this.page})
      : super(key: key);
  final String label;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(label),
      style: TextButton.styleFrom(
        primary: Colors.blue,
      ),
    );
  }
}
