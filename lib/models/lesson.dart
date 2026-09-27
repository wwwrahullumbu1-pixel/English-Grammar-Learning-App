class Lesson {
  final String id;
  final String title;
  final String category;
  final String description;
  final String explanationHindi;
  final String explanationEnglish;
  final String rule;
  final List<String> examples;
  final List<String> practiceQuestions;
  final List<String> practiceAnswers;

  const Lesson({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    required this.explanationHindi,
    required this.explanationEnglish,
    required this.rule,
    required this.examples,
    required this.practiceQuestions,
    required this.practiceAnswers,
  });
}
