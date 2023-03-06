import 'package:flutter_application_1/pages/view2.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginTest extends StatelessWidget {
  const LoginTest({super.key});

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
                    padding: const EdgeInsets.only(top: 600),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('email'),
                            ),
                          ),
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            hintText: ('password'),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(top: 50),
                                child: RichText(
                                    text: TextSpan(
                                        text: 'Restablecer contraseña',
                                        style: const TextStyle(
                                            color: Colors.black),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        View2()));
                                          }))),
                          ],
                        )
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
