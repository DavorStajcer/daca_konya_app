import 'package:daca_konya_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class SingUpScreen extends StatefulWidget {
  static const route = "/sign_up_screen";
  const SingUpScreen({Key key}) : super(key: key);

  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final signUpForm = GlobalKey<FormState>();
  final passwordController = TextEditingController();

  void signUp() {
    if (signUpForm.currentState.validate()) {
      Navigator.of(context).pushNamed(HomeScreen.route);
    }
  }

  @override
  void dispose() {
    signUpForm.currentState.dispose();
    super.dispose();
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
                key: signUpForm,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                      ),
                      validator: (value) {
                        if (value.isEmpty) return "Email cant be emtpy";
                        return null;
                      },
                    ),
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
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) return "Password cant be emtpy";
                        return null;
                      },
                      controller: passwordController,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Confirm password",
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value.isEmpty) return "Password cant be emtpy";
                        if (value != passwordController.value.text)
                          return "Passwords must mach";
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
                          onPressed: () => signUp(),
                          child: Text("SIGN UP"),
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
