import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layout_glossauro/bloc/question_events.dart';
import 'package:layout_glossauro/bloc/question_repository.dart';
import 'package:layout_glossauro/bloc/question_state.dart';

class QuestionBloc extends Bloc<QuestionEvents, QuestionState> {
  QuestionRepository repository;

  QuestionBloc(this.repository) {
    repository.nextQuestion().listen((data) => add(HasDataEvent(data)));
    repository.gameEnd().listen((end) => add(GameEndedEvent()));
  }

  Future<void> init() async {
    await repository.init();
    repository.refresh();
  }

  @override
  void onTransition(Transition<QuestionEvents, QuestionState> transition) {
    super.onTransition(transition);
    print(transition);
  }

  @override
  QuestionState get initialState => QuestionLoadingState();

  @override
  Stream<QuestionState> mapEventToState(QuestionEvents event) async* {
    if (event is NewQuestionEvent) {
      yield QuestionLoadingState();
      repository.refresh();
    } else if (event is HasDataEvent) {
      yield QuestionHasDataState(event.data);
    } else if (event is GameEndedEvent) {
      yield QuestionsEndedState();
    }
  }

  @override
  Future<Function> close() {
    repository.dispose();
    return super.close();
  }
}
