import 'package:flutter/material.dart';

class Act02 extends StatelessWidget {
  const Act02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: SweepGradient(
              center: FractionalOffset.center,
              startAngle: 0.0,
              endAngle: 3.141592 * 2,
              // begin: Alignment.topCenter,
              // end: Alignment(0.0, 1.0),
              colors: <Color>[
                Color.fromARGB(255, 254, 80, 80),
                Color.fromARGB(255, 253, 146, 52),
                Color.fromARGB(255, 252, 240, 16),
                Color.fromARGB(255, 57, 254, 100),
                Color.fromARGB(255, 86, 255, 218),
                Color.fromARGB(255, 86, 148, 255),
                Color.fromARGB(255, 100, 86, 255),
                Color.fromARGB(255, 185, 86, 255),
                Color.fromARGB(255, 219, 48, 216),
                Color.fromARGB(255, 233, 67, 156),
                Color.fromARGB(255, 254, 80, 80),
              ],
              stops: <double>[
                0.0,
                0.10,
                0.20,
                0.30,
                0.40,
                0.50,
                0.60,
                0.70,
                0.80,
                0.90,
                1.00
              ]),
        ),
        // child: Text('jdjdjdjdjdjjdjdjdjdjjdjdjdjdjd'),
        // color: Center(
        //   child: Text('Act02'),
        // ),
      ),
    );
  }
}
