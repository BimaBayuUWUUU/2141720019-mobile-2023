import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/polinema_logo.png"),
      width: 200, // Set the desired width
      height: 100, // Set the desired height
    );
  }
}