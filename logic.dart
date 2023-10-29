class Controller {
  static int questNo = 0;
  static int marks = 0;

  static const List<List<String>> optionList = [
    [
      "New Delhi",
      "Mumbai",
      "Chennai",
      "Hyderabad",
    ],
    ['27', '28', '32', '29'],
    ['Donal Trump', 'Barak Obama', 'Joh Biden', 'Rohan Yadav'],
    ['C++', 'C', 'COBAL', 'Dart'],
    ['Column', 'Row', 'Grid', 'Container'],
    ['.dart', '.exe', '.java', '.cpp']
  ];

  static const quests = [
    {
      'que': 'What is the capital of India',
      'ans': 'New Delhi',
    },
    {'que': 'How Many States are there in India', 'ans': '29'},
    {'que': 'Who is current President of USA', 'ans': 'Joh Biden'},
    {'que': 'Which was the first computer programming Language', 'ans': 'C'},
    {'que': 'Which widget works on vertical alignment', 'ans': 'Column'},
    {'que': 'What is the file extension for dart', 'ans': '.dart'},
  ];
  // static const List<Map<String, dynamic>> quests = [
  //   {
  //     'que': 'What is the capital of India',
  //     'opt': <String>['New Delhi', 'Mumbai', 'Pune', 'Chennai'],
  //     'ans': 'New Delhi'
  //   },
  //   {
  //     'que': 'How Many States are there in India',
  //     'opt': <String>['27', '28', '32', '29'],
  //     'ans': '29'
  //   },
  //   {
  //     'que': 'Who is current President of USA',
  //     'opt': <String>['Donal Trump', 'Barak Obama', 'Joh Biden', 'Rohan Yadav'],
  //     'ans': 'Joh Biden'
  //   },
  //   {
  //     'que': 'Which was the first computer programming Language',
  //     'opt': <String>['C++', 'C', 'COBAL', 'Dart'],
  //     'ans': 'C'
  //   },
  //   {
  //     'que': 'Which widget works on vertical alignment',
  //     'opt': <String>['Column', 'Row', 'Grid', 'Container'],
  //     'ans': 'Column'
  //   },
  //   {
  //     'que': 'What is the file extension for dart',
  //     'opt': <String>['.dart', '.exe', '.java', '.cpp'],
  //     'ans': '.dart'
  //   },
  // ];

  static bool checkAnswer(String option, String ans) {
    if (option == ans) {
      return true;
    }

    return false;
  }

  static void change() {
    questNo++;
  }
}
