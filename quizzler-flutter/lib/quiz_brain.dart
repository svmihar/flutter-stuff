import 'question.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _kumpulanQuestions = [
    Question(q:'angka genap selalu dapat dibagi dua',a:true), 
    Question(q:'semua bilangan adalah bilangan bulat',a:false),
    Question(q:'epstein kills himself', a:false)
  ];
  void nextQuestion(){
    if (_questionNumber < _kumpulanQuestions.length-1) {
      _questionNumber++;
    } 
  }
  String getQuestionText(){
    return _kumpulanQuestions[_questionNumber].question;
  }
  bool getAnswer(){
    return _kumpulanQuestions[_questionNumber].answer;
  }
  int getQuestionLength(){
    return _kumpulanQuestions.length;
  }
  void setQuestionNumber(int designatedNumber){
    _questionNumber = designatedNumber;
  }

}
