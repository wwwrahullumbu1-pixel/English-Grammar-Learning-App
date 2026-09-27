class VocabularyWord {
  final String word;
  final String meaning;
  final String example;
  final String moreInfo;

  const VocabularyWord({
    required this.word,
    required this.meaning,
    required this.example,
    required this.moreInfo,
  });
}

const List<VocabularyWord> vocabularyWords = [
  VocabularyWord(
    word: 'Beautiful',
    meaning: 'सुंदर',
    example: 'This is a beautiful garden.',
    moreInfo: 'Use to describe something attractive.',
  ),
  VocabularyWord(
    word: 'Happy',
    meaning: 'खुश',
    example: 'She is happy today.',
    moreInfo: 'Feeling of joy or pleasure.',
  ),
  VocabularyWord(
    word: 'Quickly',
    meaning: 'तेज़ी से',
    example: 'He ran quickly.',
    moreInfo: 'Shows how an action happens.',
  ),
  VocabularyWord(
    word: 'Practice',
    meaning: 'अभ्यास',
    example: 'I practice English every day.',
    moreInfo: 'Repeated action to improve a skill.',
  ),
  VocabularyWord(
    word: 'Friend',
    meaning: 'दोस्त',
    example: 'My friend is very kind.',
    moreInfo: 'A person you know and trust.',
  ),
  VocabularyWord(
    word: 'Learn',
    meaning: 'सीखना',
    example: 'We learn grammar every day.',
    moreInfo: 'To gain knowledge or skill.',
  ),
  VocabularyWord(
    word: 'Speak',
    meaning: 'बोलना',
    example: 'Please speak slowly.',
    moreInfo: 'To say words aloud.',
  ),
  VocabularyWord(
    word: 'Travel',
    meaning: 'यात्रा',
    example: 'We travel by train.',
    moreInfo: 'To move from one place to another.',
  ),
  VocabularyWord(
    word: 'Silent',
    meaning: 'शांत / चुप',
    example: 'The room was silent.',
    moreInfo: 'Not making noise.',
  ),
  VocabularyWord(
    word: 'Honest',
    meaning: 'ईमानदार',
    example: 'He is an honest man.',
    moreInfo: 'Truthful and trustworthy.',
  ),
];
