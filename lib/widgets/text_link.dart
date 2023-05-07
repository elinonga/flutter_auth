import 'package:flutter/material.dart';

class CustomTextLink extends StatelessWidget {
  const CustomTextLink({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(label),
      style: TextButton.styleFrom(
        primary: Colors.blue,
      ),
    );
  }
}
