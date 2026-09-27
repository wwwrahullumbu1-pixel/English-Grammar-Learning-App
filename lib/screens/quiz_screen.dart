import 'package:flutter/material.dart';
import 'package:learn_english_easy/data/grammar_data.dart';
import 'package:learn_english_easy/models/lesson.dart';

class QuizScreen extends StatefulWidget {
  final Lesson lesson;

  const QuizScreen({super.key, required this.lesson});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final List<dynamic> _questions;
  final Map<int, String> _selectedAnswers = {};
  bool _showResult = false;

  @override
  void initState() {
    super.initState();
    _questions = lessonQuizMap[widget.lesson.id] ?? [];
  }

  int _score() {
    int score = 0;
    for (var i = 0; i < _questions.length; i++) {
      final question = _questions[i];
      if (_selectedAnswers[i] == question.correctAnswer) {
        score++;
      }
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    if (_questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.lesson.title)),
        body: const Center(child: Text('No quiz available for this lesson yet.')),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('${widget.lesson.title} Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: _showResult
            ? _buildResultWidget()
            : ListView.builder(
                itemCount: _questions.length,
                itemBuilder: (context, index) {
                  final question = _questions[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.08),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${index + 1}. ${question.question}',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 14),
                        ...question.options.map(
                          (option) => RadioListTile<String>(
                            title: Text(option),
                            value: option,
                            groupValue: _selectedAnswers[index],
                            onChanged: (value) {
                              setState(() {
                                _selectedAnswers[index] = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
      ),
      floatingActionButton: !_showResult
          ? FloatingActionButton.extended(
              onPressed: () {
                if (_selectedAnswers.length != _questions.length) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please answer all questions before submitting.')),
                  );
                  return;
                }

                setState(() => _showResult = true);
              },
              label: const Text('Submit Quiz'),
              icon: const Icon(Icons.check),
            )
          : null,
    );
  }

  Widget _buildResultWidget() {
    final score = _score();
    final total = _questions.length;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.emoji_events, size: 60, color: Colors.orange),
            const SizedBox(height: 12),
            Text(
              'Your score: $score/$total',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              score >= (total / 2) ? 'Great job! Keep learning!' : 'Good effort! Try again and improve!',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back to lesson'),
            ),
          ],
        ),
      ),
    );
  }
}
