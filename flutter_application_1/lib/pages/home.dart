import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/view4.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return Profile();
            } else if (snapshot.hasError) {
              return const Center(child: Text('Errors'));
            } else {
              return View4();
            }
          },
        ),
      );
}