import 'model.dart';

abstract class QuestionState {}

class QuestionLoadingState extends QuestionState {}

class QuestionHasDataState extends QuestionState {
  final Question data;
  QuestionHasDataState(this.data);
}

class QuestionsEndedState extends QuestionState {}
