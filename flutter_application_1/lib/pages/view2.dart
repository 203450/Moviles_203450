import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/pages/view3.dart';
import 'package:flutter/material.dart';

class View2 extends StatefulWidget {
  const View2({super.key});

  @override
  State<View2> createState() => _View2State();
}

class _View2State extends State<View2> {
  List<bool> isSelected = [false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 26, 112),
        titleSpacing: 0.0,
        title: const Text('Recuperar contraseña'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: IconButton(
            color: Colors.red,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/images/B5.png'),
            onPressed: null,
          ),
        ],
      ),
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
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Text(
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            "Ingresa tu email para restablecer tu contraseña",
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 60, right: 220),
                          child: Text(
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              "Correo electrónico"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15.0)),
                                  borderSide: BorderSide(
                                      color:
                                          Color.fromARGB(135, 107, 101, 101))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              hintText: ' Dirección de correo',
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: Text(
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromARGB(255, 146, 145, 145)),
                            "Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 400),
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: MaterialButton(
                              color: Colors.green,
                              onPressed: () async {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => View3()));
                              },
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Text('Continuar',
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ),
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
