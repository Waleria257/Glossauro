class Question {
  final String body;
  final String qId;
  final List options;

  Question(this.qId, this.body, this.options) {
    this.options.shuffle();
  }
}
