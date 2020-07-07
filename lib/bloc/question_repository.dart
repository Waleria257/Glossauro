import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/semantics.dart';

import 'model.dart';

abstract class QuestionRepository {
  Stream<Question> nextQuestion();
  Stream<bool> gameEnd();

  Future<int> init();

  void refresh();
  void dispose();
}

class QuestionRepositoryFirebase extends QuestionRepository {
  final _loadedData = StreamController<Question>();
  final _cache = List<Question>();
  final _gameEnd = StreamController<bool>();

  @override
  Future<int> init() async {
    final query = await Firestore.instance
        .collection('perguntas')
        .orderBy('qId')
        .limit(3)
        .getDocuments();

    query.documents.forEach((question) {
      final doc = question.data;
      _cache.add(Question(doc["qId"], doc["enunciado"], doc["alternativas"]));
    });

    return _cache.length;
  }

  @override
  void refresh() {

    if (_cache.length == 0) {
      _gameEnd.add(true);
    } else {
      _loadedData.add(_cache.removeLast());
    }
  }

  @override
  void dispose() {
    _loadedData.close();
    _gameEnd.close();
  }

  @override
  Stream<Question> nextQuestion() => _loadedData.stream;

  @override
  Stream<bool> gameEnd() => _gameEnd.stream;
}
