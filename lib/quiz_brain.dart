import 'package:rflutter_alert/rflutter_alert.dart';

import 'questions.dart';
import 'main.dart';

int _questionnumber = 0;

class QuizBrain {
  List<Question> questionbank = [
    Question(q: 'O(N²) is the best time complexity for Bubble Sort.', a: false),
    Question(
        q: 'O(N) is the worst time complexity for Selection Sort.', a: false),
    Question(q: 'In Insertion Sorting O(N²) is its Big - O Notation.', a: true),
    Question(q: 'Time Complexity of Merge Sort is O(n*Logn).', a: true),
    Question(q: 'Time Complexity of Quick Sort is O(n*logn).', a: false),
    Question(q: 'Time Complexity of Kadane\'s Algo is O(logn).', a: false),
    Question(q: 'Time Complexity of binary search is O(Logn).', a: true),
    Question(q: 'Time Complexity of linear search is O(n).', a: true),
    Question(q: 'Time Complexity of DNF Sort is O(N/2).', a: false),
    Question(q: 'Time Complexity of Count Sort is O(N). ', a: true),
  ];

  void nextquestion() {
    if (_questionnumber < questionbank.length - 1) {
      _questionnumber++;
    }
  }

  String getQuestionText() {
    return questionbank[_questionnumber].questiontext;
  }

  bool getCorrectAnswer() {
    return questionbank[_questionnumber].questionanswer;
  }

  bool isFinished() {
    if (_questionnumber >= questionbank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionnumber = 0;
  }
}
