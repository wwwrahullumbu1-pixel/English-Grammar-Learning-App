import 'package:learn_english_easy/models/lesson.dart';
import 'package:learn_english_easy/models/quiz_question.dart';

const List<Lesson> grammarLessons = [
  Lesson(
    id: 'simple-present',
    title: 'Simple Present Tense',
    category: 'Tense',
    description: 'Daily routine, habits, and facts',
    explanationHindi:
        'Simple Present Tense ka use daily routine, repeated actions, aur facts ke liye hota hai. He/She/It ke saath verb me s/es lagta hai.',
    explanationEnglish:
        'Use the simple present to talk about routines, habits, and facts. Add s or es for he/she/it.',
    rule: 'Subject + base verb / He, She, It + verb + s/es',
    examples: [
      'I go to school every day.',
      'She reads a book.',
      'They play cricket.',
    ],
    practiceQuestions: [
      'He ___ football every evening.',
      'She ___ tea in the morning.',
      'I ___ English every day.',
    ],
    practiceAnswers: ['plays', 'drinks', 'study'],
  ),
  Lesson(
    id: 'present-continuous',
    title: 'Present Continuous Tense',
    category: 'Tense',
    description: 'Actions happening now',
    explanationHindi:
        'Present Continuous ka use tab hota hai jab action abhi ho raha hota hai. Structure: Subject + am/is/are + verb + ing.',
    explanationEnglish:
        'Use the present continuous for actions happening right now. Structure: subject + am/is/are + verb + ing.',
    rule: 'Subject + am/is/are + verb + ing',
    examples: [
      'I am learning English.',
      'She is reading a book.',
      'They are playing football.',
    ],
    practiceQuestions: [
      'She ___ (read) a book right now.',
      'I ___ (study) English at this moment.',
      'They ___ (play) outside.',
    ],
    practiceAnswers: ['is reading', 'am studying', 'are playing'],
  ),
  Lesson(
    id: 'articles',
    title: 'Articles',
    category: 'Grammar',
    description: 'A, an, the usage',
    explanationHindi:
        'Articles noun se pehle use hote hain. A aur an indefinite hote hain, jabki the definite hota hai.',
    explanationEnglish:
        'Articles come before nouns. Use a/an for general nouns and the for specific nouns.',
    rule: 'a + consonant sound, an + vowel sound, the + specific noun',
    examples: [
      'a book',
      'an apple',
      'the sun',
    ],
    practiceQuestions: [
      'I saw ___ apple.',
      'This is ___ book.',
      '___ moon is shining.',
    ],
    practiceAnswers: ['an', 'a', 'The'],
  ),
  Lesson(
    id: 'prepositions',
    title: 'Prepositions',
    category: 'Grammar',
    description: 'Position and time words',
    explanationHindi:
        'Preposition noun ya pronoun ke saath relation dikhata hai. In, on, at, under, behind, between jaise words isme aate hain.',
    explanationEnglish:
        'Prepositions show relationship between nouns and other words. They can show place or time.',
    rule: 'Use prepositions like in, on, at, under, behind, between',
    examples: [
      'The book is on the table.',
      'The cat is under the chair.',
      'We meet at 7 PM.',
    ],
    practiceQuestions: [
      'The ball is ___ the box.',
      'We meet ___ 7 PM.',
      'The dog is ___ the chair.',
    ],
    practiceAnswers: ['in', 'at', 'under'],
  ),
  Lesson(
    id: 'subject-verb-agreement',
    title: 'Subject-Verb Agreement',
    category: 'Grammar',
    description: 'Matching singular and plural subjects',
    explanationHindi:
        'Subject singular ho to verb bhi singular hota hai. Subject plural ho to verb plural hota hai.',
    explanationEnglish:
        'Singular subjects take singular verbs, and plural subjects take plural verbs.',
    rule: 'He/She/It + verb + s/es, They + verb without s',
    examples: [
      'He plays cricket.',
      'They play cricket.',
      'The book is new.',
    ],
    practiceQuestions: [
      'She ___ every day.',
      'They ___ football on Sunday.',
      'The books ___ on the table.',
    ],
    practiceAnswers: ['works', 'play', 'are'],
  ),
  Lesson(
    id: 'questions',
    title: 'Questions',
    category: 'Grammar',
    description: 'Ask properly in English',
    explanationHindi:
        'Question banana ke liye auxiliary verb ka use hota hai. Yes/No questions aur Wh-questions dono common hain.',
    explanationEnglish:
        'Questions often begin with auxiliary verbs or question words such as what, where, why, when.',
    rule: 'Are you ready? / What is your name?',
    examples: [
      'Are you ready?',
      'Where do you live?',
      'Why are you late?',
    ],
    practiceQuestions: [
      'Convert: She is at home.',
      'What is the question for: You live in Delhi?',
      'Ask: you are ready?',
    ],
    practiceAnswers: ['Is she at home?', 'Where do you live?', 'Are you ready?'],
  ),
];

const Map<String, List<QuizQuestion>> lessonQuizMap = {
  'simple-present': [
    QuizQuestion(
      question: 'She ___ to school every day.',
      options: ['go', 'goes', 'going', 'gone'],
      correctAnswer: 'goes',
      explanation: 'He/She/It ke saath verb + s/es use hota hai.',
    ),
    QuizQuestion(
      question: 'I ___ English every morning.',
      options: ['study', 'studies', 'studying', 'studied'],
      correctAnswer: 'study',
      explanation: 'Subject I ke saath base form verb use hota hai.',
    ),
    QuizQuestion(
      question: 'They ___ football on Sundays.',
      options: ['plays', 'play', 'played', 'playing'],
      correctAnswer: 'play',
      explanation: 'They plural hai, isliye verb without s.',
    ),
  ],
  'present-continuous': [
    QuizQuestion(
      question: 'I ___ English now.',
      options: ['study', 'am studying', 'studied', 'studies'],
      correctAnswer: 'am studying',
      explanation: 'Abhi ho raha action ke liye present continuous use hota hai.',
    ),
    QuizQuestion(
      question: 'She ___ a book right now.',
      options: ['reads', 'is reading', 'read', 'reading'],
      correctAnswer: 'is reading',
      explanation: 'She singular hai, isliye is reading sahi hai.',
    ),
  ],
  'articles': [
    QuizQuestion(
      question: 'I saw ___ apple.',
      options: ['a', 'an', 'the', 'none'],
      correctAnswer: 'an',
      explanation: 'Apple vowel sound se shuru hota hai, isliye an use hota hai.',
    ),
    QuizQuestion(
      question: '___ moon is shining.',
      options: ['A', 'An', 'The', 'No article'],
      correctAnswer: 'The',
      explanation: 'Specific object ke liye the use hota hai.',
    ),
  ],
  'prepositions': [
    QuizQuestion(
      question: 'The ball is ___ the box.',
      options: ['on', 'in', 'at', 'to'],
      correctAnswer: 'in',
      explanation: 'Inside ya enclosed place ke liye in use hota hai.',
    ),
    QuizQuestion(
      question: 'We meet ___ 7 PM.',
      options: ['in', 'on', 'at', 'under'],
      correctAnswer: 'at',
      explanation: 'Specific time ke liye at use hota hai.',
    ),
  ],
  'subject-verb-agreement': [
    QuizQuestion(
      question: 'He ___ every day.',
      options: ['work', 'works', 'working', 'worked'],
      correctAnswer: 'works',
      explanation: 'He/she/it ke saath verb + s/es use hota hai.',
    ),
    QuizQuestion(
      question: 'The books ___ on the table.',
      options: ['is', 'are', 'was', 'be'],
      correctAnswer: 'are',
      explanation: 'Books plural hai, isliye are sahi hai.',
    ),
  ],
  'questions': [
    QuizQuestion(
      question: 'Correct form: She is at home.',
      options: ['She is home?', 'Is she at home?', 'Does she at home?', 'She at home?'],
      correctAnswer: 'Is she at home?',
      explanation: 'Yes/No question banane ke liye is ko subject se pehle rakha jata hai.',
    ),
    QuizQuestion(
      question: 'Choose correct question: You live in Delhi?',
      options: ['Where you live?', 'Where do you live?', 'Where are you live?', 'Where you are live?'],
      correctAnswer: 'Where do you live?',
      explanation: 'Wh- question me do/does/are se help lete hain.',
    ),
  ],
};
