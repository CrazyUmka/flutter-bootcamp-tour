import 'dart:math';

class BMIResult {
  final double result;

  BMIResult({int weight, int height}) : result = weight / pow(height / 100, 2);

  String getResult() {
    return result.toStringAsFixed(1);
  }

  String getStatus() {
    if (result <= 18.5) {
      return 'Низкий';
    }
    if (result <= 25) {
      return 'Нормальный';
    }
    if (result <= 30) {
      return 'Высокий';
    }
    return 'Очень высокий';
  }

  String getInterpretation() {
    if (result <= 18.5) {
      return 'Пора начать есть побольше, а то скоро тебя будет сдувать ветром!';
    }
    if (result <= 25) {
      return 'Твой вес в норме, но я бы не расслаблялся на твоем месте!';
    }
    if (result <= 30) {
      return 'Ты начал округлятся и пухнуть, а отговорки про кость широкую не помогут. Начни заниматься спортом!';
    }
    return 'Мне кажется, ты похож на борова... Пора перестать есть сладкое и начать бегать по утрам!';
  }
}
