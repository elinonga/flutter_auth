import 'package:flutter/material.dart';

class CustomImageHeader extends StatelessWidget {
  const CustomImageHeader({Key? key, required this.imgUrl}) : super(key: key);

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imgUrl),
      height: 100,
    );
  }
}
