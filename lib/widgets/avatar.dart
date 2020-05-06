import 'package:flutter/material.dart';

class AppAvatar extends StatelessWidget {
  final String image;
  final double height;

  const AppAvatar({Key key, @required this.image, this.height = 32})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(11.43),
      child: Image.asset(
        'assets/images/$image.jpg',
        height: height,
      ),
    );
  }
}
