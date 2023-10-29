import 'package:demo_app/logic.dart';
import 'package:demo_app/result.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget {
  // String question;
  // List<String> options;
  // String answer;

  QuestionWidget({
    super.key,
    // required this.question,
    // required this.options,
    // required this.answer,
  });

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  // final List<String> options = [
  //   "New Delhi",
  //   "Mumbai",
  //   "Chennai",
  //   "Hyderabad",
  // ];
  // var options = Controller.quests[Controller.questNo]['opt'];

  var ans;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestText(
            question: Controller.quests[Controller.questNo]['que'].toString()),
        const SizedBox(height: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: Controller.optionList[Controller.questNo].map((e) {
            return ElevatedButton(
              onPressed: () async {
                if (Controller.checkAnswer(e,
                    Controller.quests[Controller.questNo]['ans'].toString())) {
                  Controller.marks += 10; //increment marks on correct answer
                }

                setState(() {
                  if (Controller.questNo < Controller.quests.length - 1) {
                    Controller
                        .change(); //change question whether answer is true or false
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Result(),
                    ));
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Controller.checkAnswer(e,
                        Controller.quests[Controller.questNo]['ans'].toString())
                    ? Colors.blue
                    : Colors.red,
                backgroundColor: Colors.white,
                // backgroundColor: ans == null
                // ? Colors.white
                // : ans == options.indexOf(e)
                //     ? Colors.blue
                //     : Colors.red,
                shadowColor: Colors.black54,
                elevation: 10,
              ),
              child: Text(
                e.toString(),
                style: const TextStyle(color: Colors.black, fontSize: 20),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}

class QuestText extends StatelessWidget {
  const QuestText({
    super.key,
    required this.question,
  });

  final String question;

  @override
  Widget build(BuildContext context) {
    return Text(
      // 'this is Question',
      question,
      style:
          const TextStyle(fontSize: 24, color: Color.fromARGB(255, 24, 19, 57)),
    );
  }
}
