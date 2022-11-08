import 'package:math_game_b/src/data/models/correct_answer.dart';

class CorrectAnswerRepository{
  static List<int> listHasCode=<int>[];
  static getCorrectAnswerList (int level){
    if (level==1){
      listHasCode.clear();
    }
  }

  List<CorrectAnswer> list = <CorrectAnswer>[];
  while(list.length<5){}
}