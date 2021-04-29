import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key key, this.profilePicHeight}) : super(key: key);
  final profilePicHeight;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage("lib/assets/images/cicek.jpg"),
      radius: profilePicHeight / 2,
    );
  }
}
