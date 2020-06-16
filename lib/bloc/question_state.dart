import 'model.dart';

abstract class QuestionState {}

class QuestionLoadingState extends QuestionState {}

class QuestionHasDataState extends QuestionState {
  final List<Question> data;
  QuestionHasDataState(this.data);
}
