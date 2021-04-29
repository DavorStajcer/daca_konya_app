import 'package:daca_konya_app/features/profile_overview/presentation/util/profile_card_clipper.dart';
import 'package:daca_konya_app/features/profile_overview/presentation/widgets/profile_card.dart';
import 'package:daca_konya_app/features/profile_overview/presentation/widgets/profile_picture.dart';
import 'package:flutter/material.dart';

class ProfileOverviewScreen extends StatelessWidget {
  const ProfileOverviewScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final profilePicHeight = screenSize.width * 0.25;
    return Center(
      child: Column(
        children: [
          Flexible(flex: 1, child: Container()),
          Flexible(
            flex: 3,
            child: Container(
              width: screenSize.width * 0.75,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  ClipPath(
                    clipper: ProfileCardClipper(
                      profilePicHeight: profilePicHeight,
                    ),
                    child: ProfileCard(
                      profilePicHeight: profilePicHeight,
                    ),
                  ),
                  ProfilePicture(
                    profilePicHeight: profilePicHeight,
                  )
                ],
              ),
            ),
          ),
          Flexible(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
