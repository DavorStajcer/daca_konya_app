import 'package:daca_konya_app/features/authentication/domain/entities/user_data.dart';
import 'package:daca_konya_app/features/profile_overview/presentation/bloc/profile_screen_cubit/profile_screen_cubit.dart';
import 'package:daca_konya_app/features/profile_overview/presentation/util/profile_card_clipper.dart';
import 'package:daca_konya_app/features/profile_overview/presentation/widgets/profile_picture_edit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCardEdit extends StatelessWidget {
  final double picHeight;
  final UserDataPublic userData;
  const ProfileCardEdit(
      {Key? key, required this.picHeight, required this.userData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProfileScreenCubit profileScreenCubit =
        BlocProvider.of<ProfileScreenCubit>(context);
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipPath(
          clipper: ProfileCardClipper(picHeight: picHeight),
          child: Card(
            child: Column(
              children: [
                Container(height: picHeight),
                Container(
                  width: picHeight + 30,
                  height: 50,
                  child: _usernameEdit(profileScreenCubit),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                ),
                Divider(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: _descriptionEdit(profileScreenCubit),
                  ),
                ),
              ],
            ),
          ),
        ),
        ProfilePictureEdit(
          picHeight: picHeight,
          imageUrl: userData.imageUrl,
        ),
      ],
    );
  }

  Widget _usernameEdit(ProfileScreenCubit profileScreenCubit) => TextFormField(
        initialValue: userData.username,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            gapPadding: 1,
          ),
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        maxLength: 10,
        onChanged: (value) => profileScreenCubit.usernameChanged(value),
      );

  Widget _descriptionEdit(ProfileScreenCubit profileScreenCubit) =>
      TextFormField(
        initialValue: userData.description,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            gapPadding: 1,
          ),
        ),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
        maxLength: 100,
        maxLines: 8,
        onChanged: (value) => profileScreenCubit.descriptionChanged(value),
      );
}
