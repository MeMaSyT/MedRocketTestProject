import 'dart:math';

import 'package:home_task/task2/questionnaire/models/questionnaire_model.dart';

abstract class QuestionnaireRepository {
  Future<QuestionnaireModel> getQuestionnaire();
}

class QuestionnaireTestingRepository extends QuestionnaireRepository {
  @override
  Future<QuestionnaireModel> getQuestionnaire() async {
    await Future.delayed(Duration(seconds: 1));
    int rd = Random().nextInt(3);
    int percentage = 0;
    if(rd == 1){
      percentage = Random().nextInt(99) + 1;
    }
    else if(rd == 2){
      percentage = 100;
    }
    print(rd);
    return QuestionnaireModel(completionPercentage: percentage);
  }
}
