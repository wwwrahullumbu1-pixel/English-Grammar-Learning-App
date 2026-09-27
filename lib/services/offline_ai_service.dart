import 'dart:convert';
import 'package:http/http.dart' as http;

class OfflineAIService {
  static const String ollamaUrl = 'http://localhost:11434/api/generate';

  static Future<String> getTutorResponse(String userMessage) async {
    final prompt = '''
You are an English teacher for beginners in India.
Provide answer in Hindi + English mixed style.
Keep the answer simple, short, and beginner-friendly.
Explain grammar clearly with an example.
User question: $userMessage
''';

    try {
      final response = await http.post(
        Uri.parse(ollamaUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'model': 'mistral',
          'prompt': prompt,
          'stream': false,
        }),
      ).timeout(const Duration(seconds: 45));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['response'] ?? 'No reply received from offline model.';
      }

      return 'Offline model is not reachable. Please run: ollama serve\nAnd ensure a model is installed: ollama pull mistral';
    } catch (e) {
      return 'Could not reach Ollama.\nPlease install and run Ollama:\n1) ollama pull mistral\n2) ollama serve\nThen retry.';
    }
  }
}
