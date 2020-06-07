import 'model.dart';

abstract class QuestionEvents {}

class HasDataEvent extends QuestionEvents {
  final List<Question> data;

  HasDataEvent(this.data);
}