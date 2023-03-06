import 'package:flutter_application_1/pages/facebook.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/google.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/pages/loginapi.dart';
import 'package:flutter_application_1/pages/registro.dart';

class View4 extends StatefulWidget {
  const View4({super.key});

  @override
  State<View4> createState() => _View4State();
}

class _View4State extends State<View4> {
  List<bool> isSelected = [false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        const SizedBox(
                          width: 250.0,
                          height: 250.0,
                          child: Center(
                            child: Image(
                              image: AssetImage('assets/images/logo.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            height: 50,
                            width: 350,
                            child: MaterialButton(
                              color: const Color.fromARGB(255, 63, 104, 236),
                              onPressed: () async {
                                final provider =
                                    Provider.of<GoogleSignInProvider>(context,
                                        listen: false);
                                provider.googleLogin();
                              },
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/google.png',
                                      width: 24.0, height: 24.0),
                                  const SizedBox(width: 8.0),
                                  const Text(
                                    'Continuar con Google',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SizedBox(
                            height: 50,
                            width: 350,
                            child: MaterialButton(
                              color: const Color.fromARGB(255, 56, 78, 159),
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            signInFacebook()));
                              },
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/fb.png',
                                      width: 24.0, height: 24.0),
                                  const SizedBox(width: 8.0),
                                  const Text(
                                    'Continuar con Facebook',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: SizedBox(
                            height: 50,
                            width: 350,
                            child: MaterialButton(
                              color: Colors.white,
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Register()));
                              },
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1,
                                      color: Color.fromARGB(255, 44, 44, 44)),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/email.png',
                                      width: 24.0, height: 24.0),
                                  const SizedBox(width: 8.0),
                                  const Text(
                                    'Registro con email',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromARGB(255, 44, 44, 44)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 50),
                              child: const Text(
                                'Entrar como invitado',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 231, 56, 99)),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: const Text(
                                'Entrar como vendedor',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.green),
                              ),
                            ),
                            Container(
                                padding: const EdgeInsets.only(top: 30),
                                child: RichText(
                                  text: TextSpan(
                                    text: '¿Ya tienes cuenta?',
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.black),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' Inicia sesión',
                                          style: const TextStyle(
                                              color: Colors.red, fontSize: 18),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          OnLogin()));
                                            }),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
