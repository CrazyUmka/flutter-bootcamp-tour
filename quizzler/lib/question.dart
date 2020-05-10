class Question {
  String text;
  bool answer;

  Question(this.text, this.answer);

  bool check(bool ans) {
    return ans == answer;
  }
}
