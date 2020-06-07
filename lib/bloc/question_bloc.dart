import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layout_glossauro/bloc/question_events.dart';
import 'package:layout_glossauro/bloc/question_repository.dart';
import 'package:layout_glossauro/bloc/question_state.dart';

class QuestionBloc extends Bloc<QuestionEvents, QuestionState> {

  final QuestionRepository repository;

  QuestionBloc(this.repository) {
    repository.questions().listen((data) => add(HasDataEvent(data)));
  }

  @override
  QuestionState get initialState => QuestionLoadingState();

  @override
  Stream<QuestionState> mapEventToState(QuestionEvents event) async* {
    if (event is HasDataEvent) {
      yield QuestionHasDataState(event.data);
    }
  }

  @override
  Future<Function> close(){
    repository.dispose();
    return super.close();
  }
}