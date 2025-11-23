import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_task/task2/questionnaire/bloc/questionnaire_bloc.dart';
import 'package:home_task/task2/repositories/questionnaire_repository.dart';

class QuestionnairePage extends StatelessWidget {
  final String questionnaireStateText;

  const QuestionnairePage({super.key, required this.questionnaireStateText});

  @override
  Widget build(BuildContext context) {
    QuestionnaireTestingRepository repository =
        QuestionnaireTestingRepository();
    QuestionnaireBloc bloc = QuestionnaireBloc(repository: repository);

    bloc.add(LoadQuestionnaireEvent());

    return Scaffold(
      body: BlocBuilder(
        bloc: bloc,
        builder: (context, state) {
          if (state is QuestionnaireEmptyState) {
            return Center(
              child: Text(
                "Questionnaire is empty",
                style: TextStyle(fontSize: 20),
              ),
            );
          }
          if (state is QuestionnaireInProcessState) {
            return Center(
              child: Text(
                "Questionnaire in process: ${state.completionPercentage}",
                style: TextStyle(fontSize: 20),
              ),
            );
          }
          if (state is QuestionnaireCompleteState) {
            return Center(
              child: Text("Questionnaire complete", style: TextStyle(fontSize: 20)),
            );
          }
          return Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}
