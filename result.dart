import 'package:demo_app/logic.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have scored',
            style: TextStyle(color: Color.fromARGB(255, 8, 25, 9), fontSize: 25),),
            Text(Controller.marks.toString(),
            style: const TextStyle(color: Colors.green, fontSize: 60),),
          ],
        ),
      ),
    );
  }
}
