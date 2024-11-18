import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final List<Topic> topics = [
    Topic(title: "Preamble", questions: _getPreambleQuestions()),
    Topic(title: "Part I", questions: _getPartIQuestions()),
    Topic(title: "Part II", questions: _getPartIIQuestions()),
    Topic(title: "Part III", questions: _getPartIIIQuestions()),
    Topic(title: "Part IV", questions: _getPartIVQuestions()),
    Topic(title: "Part IV-A", questions: _getPartIVAQuestions()),
  ];

  int currentTopicIndex = 0;
  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(int selectedIndex) {
    if (selectedIndex == topics[currentTopicIndex].questions[currentQuestionIndex].answerIndex) {
      score++;
    }
    if (currentQuestionIndex < topics[currentTopicIndex].questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Navigate to the result page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            score: score,
            total: topics[currentTopicIndex].questions.length,
            topicTitle: topics[currentTopicIndex].title,
          ),
        ),
      );
    }
  }

  void selectTopic(int? index) {
    if (index != null) {
      setState(() {
        currentTopicIndex = index;
        currentQuestionIndex = 0;
        score = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Game'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButton<int>(
              value: currentTopicIndex,
              items: List.generate(topics.length, (index) {
                return DropdownMenuItem<int>(
                  value: index,
                  child: Text(topics[index].title),
                );
              }),
              onChanged: selectTopic,
            ),
            const SizedBox(height: 20),
            Text(
              'Question ${currentQuestionIndex + 1}/${topics[currentTopicIndex].questions.length}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            Text(
              topics[currentTopicIndex].questions[currentQuestionIndex].question,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ...List.generate(topics[currentTopicIndex].questions[currentQuestionIndex].options.length, (index) {
              return ElevatedButton(
                onPressed: () => checkAnswer(index),
                child: Text(topics[currentTopicIndex].questions[currentQuestionIndex].options[index]),
              );
            }),
          ],
        ),
      ),
    );
  }

  static List<Question> _getPreambleQuestions() {
    return [
      Question(question: "What does the Preamble declare?", options: ["Fundamental Rights", "Goals of the Constitution", "Union Territories", "Duties of Citizens"], answerIndex: 1),
      Question(question: "Who are the makers of the Constitution?", options: ["The President", "The Parliament", "We, the People of India", "The Supreme Court"], answerIndex: 2),
      Question(question: "What is emphasized in the Preamble?", options: ["Justice", "Discipline", "Power", "Rights"], answerIndex: 0),
      Question(question: "What is the essence of the Preamble?", options: ["Economic Rights", "Social Justice", "Fundamental Duties", "Civic Responsibilities"], answerIndex: 1),
      Question(question: "The Preamble promotes which of the following?", options: ["Democracy", "Monarchy", "Theocracy", "Plutocracy"], answerIndex: 0),
      Question(question: "What does the term 'Sovereign' imply?", options: ["Subservient to other nations", "Independent and free", "Under foreign control", "Controlled by the monarchy"], answerIndex: 1),
      Question(question: "What is the primary purpose of the Preamble?", options: ["To outline laws", "To declare goals and values", "To define the government structure", "To list duties"], answerIndex: 1),
      Question(question: "Which of these concepts is NOT mentioned in the Preamble?", options: ["Liberty", "Equality", "Economics", "Justice"], answerIndex: 2),
      Question(question: "The Preamble affirms the commitment to which form of governance?", options: ["Republic", "Dictatorship", "Monarchy", "Anarchy"], answerIndex: 0),
      Question(question: "What type of justice is referred to in the Preamble?", options: ["Social, economic, and political", "Criminal", "Environmental", "Religious"], answerIndex: 0),
    ];
  }

  static List<Question> _getPartIQuestions() {
    return [
      Question(question: "What does Part I cover?", options: ["Citizenship", "Union and its Territory", "Fundamental Rights", "Directive Principles"], answerIndex: 1),
      Question(question: "Which states are part of the Union?", options: ["Only Northern States", "All states and Union Territories", "Only Southern States", "Only Eastern States"], answerIndex: 1),
      Question(question: "What is defined in Article 1?", options: ["Name of the country", "Fundamental Rights", "Directive Principles", "Duties of citizens"], answerIndex: 0),
      Question(question: "What do Union Territories represent?", options: ["Partially governed areas", "Fully sovereign states", "Independently governed regions", "None of the above"], answerIndex: 0),
      Question(question: "The Constitution establishes India as what type of state?", options: ["Federal", "Confederal", "Unitary", "None of the above"], answerIndex: 0),
      Question(question: "How many parts are there in the Constitution?", options: ["20", "25", "30", "22"], answerIndex: 3),
      Question(question: "Which Article discusses the territory of India?", options: ["Article 1", "Article 2", "Article 3", "Article 4"], answerIndex: 0),
      Question(question: "What happens when a new territory is formed?", options: ["Automatically becomes a state", "Requires a new Article", "Becomes a Union Territory", "None of the above"], answerIndex: 2),
      Question(question: "Which part is dedicated to Union territories?", options: ["Part II", "Part I", "Part IV", "Part III"], answerIndex: 1),
      Question(question: "The Constitution allows for what regarding Union territories?", options: ["Dissolution", "Creation", "Merging with states", "All of the above"], answerIndex: 3),
    ];
  }

  static List<Question> _getPartIIQuestions() {
    return [
      Question(question: "What does Part II discuss?", options: ["Rights of the Citizens", "Fundamental Duties", "Citizenship", "State Policies"], answerIndex: 2),
      Question(question: "Which article defines citizenship?", options: ["Article 5", "Article 6", "Article 7", "Article 8"], answerIndex: 0),
      Question(question: "Citizenship can be acquired by?", options: ["Birth", "Descent", "Registration", "All of the above"], answerIndex: 3),
      Question(question: "Who is NOT a citizen of India?", options: ["A person born in India", "A person of Indian origin", "A foreigner married to an Indian", "A tourist"], answerIndex: 3),
      Question(question: "Which article provides for citizenship at the commencement of the Constitution?", options: ["Article 5", "Article 6", "Article 7", "Article 8"], answerIndex: 1),
      Question(question: "How can Indian citizenship be terminated?", options: ["Naturalization", "Renunciation", "Birth", "Descent"], answerIndex: 1),
      Question(question: "Which article mentions the rights of citizens?", options: ["Article 15", "Article 21", "Article 5", "None of the above"], answerIndex: 2),
      Question(question: "Who has the authority to legislate on citizenship?", options: ["Parliament", "President", "Supreme Court", "State Legislature"], answerIndex: 0),
      Question(question: "Which article allows for the acquisition of citizenship by registration?", options: ["Article 6", "Article 7", "Article 5", "Article 8"], answerIndex: 3),
      Question(question: "What does Article 9 state about citizenship?", options: ["It is not affected by disloyalty", "It is lost by voluntarily acquiring citizenship in another country", "It is automatic", "None of the above"], answerIndex: 1),
    ];
  }

  static List<Question> _getPartIIIQuestions() {
    return [
      Question(question: "What rights are covered in Part III?", options: ["Fundamental Rights", "Directive Principles", "Fundamental Duties", "Economic Rights"], answerIndex: 0),
      Question(question: "Which article guarantees the right to equality?", options: ["Article 14", "Article 15", "Article 16", "All of the above"], answerIndex: 3),
      Question(question: "What does Article 21 protect?", options: ["Right to life and personal liberty", "Right to education", "Right to freedom of speech", "Right to religion"], answerIndex: 0),
      Question(question: "Which right prohibits discrimination?", options: ["Right to Equality", "Right to Freedom", "Right against Exploitation", "Cultural and Educational Rights"], answerIndex: 0),
      Question(question: "What do Fundamental Rights ensure?", options: ["Basic human rights", "Economic rights", "Social rights", "Political rights"], answerIndex: 0),
      Question(question: "Which article provides for the right to freedom of speech?", options: ["Article 19", "Article 20", "Article 21", "Article 22"], answerIndex: 0),
      Question(question: "What is NOT a Fundamental Right?", options: ["Right to Equality", "Right to Freedom", "Right to Education", "Right to Work"], answerIndex: 3),
      Question(question: "Which article protects against exploitation?", options: ["Article 23", "Article 24", "Article 25", "Article 26"], answerIndex: 0),
      Question(question: "Which article guarantees the right to freedom of religion?", options: ["Article 25", "Article 26", "Article 27", "All of the above"], answerIndex: 3),
      Question(question: "How many Fundamental Rights are there in the Constitution?", options: ["5", "6", "7", "4"], answerIndex: 1),
    ];
  }

  static List<Question> _getPartIVQuestions() {
    return [
      Question(question: "What is the focus of Part IV?", options: ["Fundamental Rights", "Directive Principles of State Policy", "Citizenship", "Union Territories"], answerIndex: 1),
      Question(question: "Which article discusses the Directive Principles?", options: ["Article 36", "Article 37", "Article 38", "All of the above"], answerIndex: 3),
      Question(question: "Directive Principles aim to promote?", options: ["Welfare of the State", "Economic exploitation", "Civil disobedience", "Religious intolerance"], answerIndex: 0),
      Question(question: "Which article mandates the State to secure a living wage?", options: ["Article 41", "Article 42", "Article 43", "All of the above"], answerIndex: 3),
      Question(question: "Which of these is a Directive Principle?", options: ["Right to vote", "Right to free speech", "Right to education", "Promotion of educational and economic interests"], answerIndex: 3),
      Question(question: "Are Directive Principles justiciable?", options: ["Yes", "No", "Depends on the state", "Only in certain cases"], answerIndex: 1),
      Question(question: "Which article refers to the organization of village panchayats?", options: ["Article 40", "Article 41", "Article 42", "Article 43"], answerIndex: 0),
      Question(question: "What is the purpose of the Directive Principles?", options: ["To guide the State in policy making", "To establish law", "To limit rights", "None of the above"], answerIndex: 0),
      Question(question: "Which article refers to the provision for just and humane conditions of work?", options: ["Article 42", "Article 43", "Article 44", "Article 45"], answerIndex: 0),
      Question(question: "Which article requires the State to secure equal pay for equal work?", options: ["Article 41", "Article 42", "Article 43", "Article 44"], answerIndex: 1),
    ];
  }

  static List<Question> _getPartIVAQuestions() {
    return [
      Question(question: "What does Part IV-A focus on?", options: ["Fundamental Rights", "Fundamental Duties", "Union and its Territory", "State Policies"], answerIndex: 1),
      Question(question: "Which article mentions Fundamental Duties?", options: ["Article 51A", "Article 51B", "Article 51C", "Article 51D"], answerIndex: 0),
      Question(question: "Who is required to follow the Fundamental Duties?", options: ["Only citizens", "Only government officials", "Non-citizens", "All persons"], answerIndex: 0),
      Question(question: "Which of the following is a Fundamental Duty?", options: ["To vote", "To pay taxes", "To protect the environment", "To attend school"], answerIndex: 2),
      Question(question: "Which article emphasizes the importance of the Constitution?", options: ["Article 51A", "Article 51B", "Article 51C", "Article 51D"], answerIndex: 0),
      Question(question: "Fundamental Duties were added to the Constitution in which amendment?", options: ["42nd", "44th", "40th", "45th"], answerIndex: 0),
      Question(question: "What is the purpose of Fundamental Duties?", options: ["To restrict rights", "To promote social responsibility", "To ensure political power", "None of the above"], answerIndex: 1),
      Question(question: "Which of these is NOT a Fundamental Duty?", options: ["To uphold the sovereignty", "To safeguard public property", "To promote casteism", "To strive towards excellence"], answerIndex: 2),
      Question(question: "Are Fundamental Duties enforceable by law?", options: ["Yes", "No", "Partially", "Only for minors"], answerIndex: 1),
      Question(question: "What should every citizen promote according to the Fundamental Duties?", options: ["Communal harmony", "Economic disparity", "Social discord", "None of the above"], answerIndex: 0),
    ];
  }
}

class Topic {
  final String title;
  final List<Question> questions;

  Topic({required this.title, required this.questions});
}

class Question {
  final String question;
  final List<String> options;
  final int answerIndex;

  Question({required this.question, required this.options, required this.answerIndex});
}

class ResultPage extends StatelessWidget {
  final int score;
  final int total;
  final String topicTitle;

  const ResultPage({super.key, required this.score, required this.total, required this.topicTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Center(
        child: Text(
          'Your Score in $topicTitle: $score/$total',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
