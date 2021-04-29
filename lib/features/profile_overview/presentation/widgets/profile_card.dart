import 'package:daca_konya_app/features/authentication/presentation/screens/landing_screen.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key key, this.profilePicHeight}) : super(key: key);
  final profilePicHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: profilePicHeight,
          ),
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Text("DAVOR ŠTAJCER"),
                Text("Konya, Turkey"),
                Divider(),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "This is some description of the my profile. My name is Davor. I like to do... things. Some wierd. Some not. Wierd part preferably not in public. Anyway, you can scroll this down and in order to see that i have to write some longer text like this. Thats why I am writing nonsense because I dont know what to write. And now you read it all. Godd job. Give me a high grade now if you see this. Warm regards, Me."),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: ElevatedButton(
                child: Text("LOG OUT"),
                onPressed: () {
                  Navigator.of(context).pop();
                  // BlocProvider.of<AuthBloc>(context).add(LogOutEvent());  // I will implement Firbase later
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
