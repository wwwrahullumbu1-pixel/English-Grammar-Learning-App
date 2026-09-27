# Learn English Easy

A Hindi + English mixed English grammar learning app with offline AI support.

## Features

- Grammar lessons in Hindi + English
- Beginner-friendly explanations
- Practice questions and quizzes
- AI tutor using a local offline model via Ollama
- Progress tracking and simple rewards
- Mobile-friendly design

## Offline AI setup

1. Install Ollama: https://ollama.ai
2. Pull a model locally:

```bash
ollama pull mistral
```

3. Start the local server:

```bash
ollama serve
```

4. Confirm the local endpoint is available:

```bash
curl http://localhost:11434
```

5. Run the Flutter app:

```bash
flutter pub get
flutter run
```

## Notes

- The app is configured to call Ollama at `http://localhost:11434/api/generate`.
- For Android emulator, use `http://10.0.2.2:11434/api/generate` instead.
- For a physical device, replace `localhost` with your computer's local IP.

## Project structure

- `lib/main.dart`
- `lib/data/grammar_data.dart`
- `lib/models/lesson.dart`
- `lib/models/quiz_question.dart`
- `lib/screens/...`
- `lib/services/offline_ai_service.dart`

## Development status

This repository contains a working starter app for offline grammar learning with an AI tutor. It can be extended with authentication, bigger lesson sets, and deployed builds.
