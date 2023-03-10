import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_sceen_2/screens/signin_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Logout'),
          onPressed: () {
            FirebaseAuth.instance.signOut().then((value) {
              print('User Signed Out');
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => SignInScreen())));
            });
          },
        ),
      ),
    );
  }
}
