import 'package:flutter_application_1/pages/view4.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class signInFacebook extends StatefulWidget {
  @override
  _signInFacebookState createState() => _signInFacebookState();
}

class _signInFacebookState extends State<signInFacebook> {
  bool _isLoggedIn = false;
  Map _userObj = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DBestech"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: _isLoggedIn
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                    imageUrl: _userObj["picture"]["data"]["url"],
                    errorWidget: (context, url, error) =>
                        Icon(Icons.error_outline),
                  ),
                  // Image.network(_userObj["picture"]["data"]["url"]),
                  Text(_userObj["name"]),
                  Text(_userObj["email"]),
                  TextButton(
                      onPressed: () {
                        FacebookAuth.instance.logOut().then((value) {
                          setState(() {
                            _isLoggedIn = false;
                            _userObj = {};
                          });
                        });
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => View4()));
                      },
                      child: Text("Logout"))
                ],
              )
            : const Center(child: Text('Cargando...')),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Coloca aquí la llamada a la función que deseas ejecutar al entrar en la vista
    myFunction();
  }

  void myFunction() {
    // Coloca aquí el código que deseas ejecutar al entrar en la vista
    FacebookAuth.instance
        .login(permissions: ["public_profile", "email"]).then((value) {
      FacebookAuth.instance.getUserData().then((userData) async {
        setState(() {
          _isLoggedIn = true;
          _userObj = userData;
        });
      });
    });
  }
}
