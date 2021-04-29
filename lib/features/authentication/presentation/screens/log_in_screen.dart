import 'package:daca_konya_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  static const route = "/log_in_screen";
  const LogInScreen({Key key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final logInForm = GlobalKey<FormState>();

  void logIn() {
    if (logInForm.currentState.validate()) {
      Navigator.of(context).pushReplacementNamed(HomeScreen.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screnSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("DacaApp"),
      ),
      body: Center(
        child: Container(
          height: screnSize.height * 0.5,
          width: screnSize.width * 0.75,
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 25,
              ),
              child: Form(
                key: logInForm,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                      ),
                      validator: (value) {
                        if (value.isEmpty) return "Email cant be emtpy";
                        if (!value.contains("@") || !value.contains("."))
                          return "Must be a valid emal";
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      validator: (value) {
                        if (value.isEmpty) return "Password cant be emtpy";
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: ElevatedButton(
                          onPressed: () => logIn(),
                          child: Text("LOG IN"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
