import 'package:flutter/material.dart';

class Act03 extends StatelessWidget {
  const Act03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 40),
              child: Text('TEXTO', style: TextStyle(fontSize: 50),
              ),
            ),
            Column(
              children: const[
                Text('texto1', style: TextStyle(fontSize: 50)),
                Text('texto2', style: TextStyle(fontSize: 50)),
                Text('texto3', style: TextStyle(fontSize: 50)),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
