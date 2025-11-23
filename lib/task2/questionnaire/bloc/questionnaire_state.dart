part of 'questionnaire_bloc.dart';

abstract class QuestionnaireState {}

class QuestionnaireInitial extends QuestionnaireState {}

class QuestionnaireEmptyState extends QuestionnaireState {}

class QuestionnaireInProcessState extends QuestionnaireState {
  final int completionPercentage;

  QuestionnaireInProcessState({required this.completionPercentage});
}

class QuestionnaireCompleteState extends QuestionnaireState {}
