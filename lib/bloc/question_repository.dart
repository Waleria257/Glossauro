import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'model.dart';

abstract class QuestionRepository {
  Stream<List<Question>> questions();

  void refresh();
  void dispose();
}

class QuestionRepositoryFirebase extends QuestionRepository {
  final _loadedData = StreamController<List<Question>>();
  final _cache = List<Question>();

  @override
  void refresh() {
    if (Firestore.instance != null) {
      Firestore.instance
          .collection('perguntas')
          .where('qId', isEqualTo: 'i8uPJVW7KNoZvY8WbW3f')
          .snapshots()
          .listen((data) {
        data.documents.forEach((question) {
          final doc = question.data;
          _cache.add(Question(doc["qId"], doc["enunciado"]));
        });
        _loadedData.add(_cache);
      });
    }
  }

  @override
  void dispose() {
    _loadedData.close();
  }

  @override
  Stream<List<Question>> questions() => _loadedData.stream;
}
