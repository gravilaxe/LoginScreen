import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:login_sceen_2/screens/home_screen.dart';

import '../reusable_widgets/reusable.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _usernameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.deepPurple,
            Colors.purple,
            Colors.pink,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(60),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                  child: reusableTextField('Enter Username', Icons.abc, false,
                      _usernameTextController),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                  child: reusableTextField(
                      'Enter Email', Icons.person, false, _emailTextController),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                  child: reusableTextField('Enter Password', Icons.lock, true,
                      _passwordTextController),
                ),
                signInSignUpButton(context, false, () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                    email: _emailTextController.text,
                    password: _passwordTextController.text,
                  )
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => HomePage())));
                  }).onError((error, stackTrace) {
                    print('Error ${error.toString()}');
                  });
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
