import 'package:flutter/cupertino.dart';

class ProfileCardClipper extends CustomClipper<Path> {
  final profilePicHeight;

  ProfileCardClipper({
    this.profilePicHeight,
  });

  @override
  getClip(Size size) {
    final path = Path()
      ..moveTo(0, profilePicHeight / 2)
      ..lineTo(size.width, profilePicHeight / 2)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
