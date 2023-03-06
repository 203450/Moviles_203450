import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/google.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  //final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title: Text('perfil'),
        actions: [
          TextButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              },
              child: const Text(
                'Logout',
                style: TextStyle(color: Colors.black),
              ))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'profile',
              style: TextStyle(fontSize: 24),
            ),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(user.photoURL!),
            ),
            Text(
              'Name: ' + user.displayName!,
              style: const TextStyle(color: Colors.amber, fontSize: 16),
            ),
            Text(
              'Email: ' + user.email!,
              style: const TextStyle(color: Colors.amber, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}