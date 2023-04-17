import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String image;
  final double radius;

  const ProfilePicture({
    Key? key,
    required this.image,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: radius,
    );
  }
}
