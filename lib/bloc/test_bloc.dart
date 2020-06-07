import 'dart:async';

class TestQuestionBloc {
  List arr;
  int curr;

  final _blocController = StreamController<String>();

  Stream<String> get minhaStream => _blocController.stream;

  QuestionBloc() {
    arr = ['questão 1', 'questão 2', 'questão 3', 'questão 4', 'questão 5'];
    curr = 0;
    retornarQuestao();
  }

  void retornarQuestao() {
    if (curr >= arr.length) {
      curr = 0;
    }
    _blocController.sink.add(arr[curr++]);
  }

  fecharStream() {
    _blocController.close();
  }
}
