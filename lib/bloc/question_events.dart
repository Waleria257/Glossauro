import 'model.dart';

abstract class QuestionEvents {}

class NewQuestionEvent extends QuestionEvents {}

class HasDataEvent extends QuestionEvents {
  final Question data;
  HasDataEvent(this.data);
}

class GameEndedEvent extends QuestionEvents {}