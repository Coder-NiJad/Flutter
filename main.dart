// ignore_for_file: prefer_const_constructors

import 'package:demo_app/logic.dart';
import 'package:demo_app/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FDC',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w800,
                  fontSize: 35)),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              // color: Color.fromARGB(164, 147, 218, 207),
              // color: Colors.blueGrey.withOpacity(0.4),
              gradient: LinearGradient(colors: const [
            // Colors.amber.withOpacity(.2),
            // Colors.amber,
            Color.fromARGB(182, 221, 233, 231),
            Color.fromARGB(255, 90, 244, 221),
            //  Colors.cyan
          ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
          child: QuestionWidget(
            // question: Controller.quests[Controller.questNo]['que'].toString(),
            // options: Controller.optionList[Controller.questNo],
            // answer: Controller.quests[Controller.questNo]['ans'].toString(),
          ),
        ));
  }
}
