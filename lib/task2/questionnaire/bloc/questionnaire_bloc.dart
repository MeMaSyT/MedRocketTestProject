import 'package:bloc/bloc.dart';
import 'package:home_task/task2/repositories/questionnaire_repository.dart';

part 'questionnaire_event.dart';

part 'questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  final QuestionnaireRepository repository;

  QuestionnaireBloc({required this.repository})
    : super(QuestionnaireInitial()) {
    on<LoadQuestionnaireEvent>((event, emit) async {
      final questionnaire = await repository.getQuestionnaire();
      if (questionnaire.completionPercentage == 0) {
        emit(QuestionnaireEmptyState());
      } else if (questionnaire.completionPercentage == 100) {
        emit(QuestionnaireCompleteState());
      } else {
        emit(
          QuestionnaireInProcessState(
            completionPercentage: questionnaire.completionPercentage,
          ),
        );
      }
    });
  }
}
