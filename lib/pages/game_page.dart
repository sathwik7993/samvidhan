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
    Topic(title: "Part V", questions: _getPartVQuestions()),
    Topic(title: "Part VI", questions: _getPartVIQuestions()),
    Topic(title: "Part VIII", questions: _getPartVIIIQuestions()),
    Topic(title: "Part IX", questions: _getPartIXQuestions()),
    Topic(title: "Part X", questions: _getPartXQuestions()),
    Topic(title: "Part XI", questions: _getPartXIQuestions()),
Topic(title: "Part XII", questions: _getPartXIIQuestions()),
Topic(title: "Part XIII", questions: _getPartXIIIQuestions()),
Topic(title: "Part XIV", questions: _getPartXIVQuestions()),
Topic(title: "Part XV", questions: _getPartXVQuestions()),
Topic(title: "Part XVI", questions: _getPartXVIQuestions()),
Topic(title: "Part XVII", questions: _getPartXVIIQuestions()),
Topic(title: "Part XVIII", questions: _getPartXVIIIQuestions()),
Topic(title: "Part XIX", questions: _getPartXIXQuestions()),
Topic(title: "Part XX", questions: _getPartXXQuestions()),
Topic(title: "Part XXI", questions: _getPartXXIQuestions()),
Topic(title: "Part XXII", questions: _getPartXXIIQuestions()),
Topic(title: "Schedules of the Constitution of India", questions: _getSchedulesQuestions()),

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
static List<Question> _getPartVQuestions() {
  return [
    Question(question: "What is the role of the President of India?", options: ["Head of the country", "Head of the government", "Head of Parliament", "Supreme Court judge"], answerIndex: 0),
    Question(question: "Who helps the President in performing their duties?", options: ["Prime Minister and ministers", "Supreme Court judges", "State Governors", "Members of Parliament"], answerIndex: 0),
    Question(question: "How is the President of India elected?", options: ["By members of Parliament and State Assemblies", "By popular vote", "By the Supreme Court", "By state governors"], answerIndex: 0),
    Question(question: "How is the President’s election process balanced?", options: ["Votes are counted based on state population and Parliament size", "Each state gets equal votes", "Only members of Parliament vote", "A secret committee decides the votes"], answerIndex: 0),
    Question(question: "What is the term of the President of India?", options: ["5 years", "6 years", "4 years", "Indefinite"], answerIndex: 0),
    Question(question: "Can the President be re-elected?", options: ["Yes, if they perform well", "No, once elected they cannot be re-elected", "Yes, but only after 10 years", "No, unless a new election is held"], answerIndex: 0),
    Question(question: "What are the eligibility requirements to become President?", options: ["At least 35 years old, Indian citizen, and meet other qualifications", "At least 25 years old, Indian citizen", "At least 40 years old, Indian citizen", "No age limit, only Indian citizen"], answerIndex: 0),
    Question(question: "What is the President's residence called?", options: ["Rashtrapati Bhavan", "President's House", "Raj Bhavan", "Vidhana Soudha"], answerIndex: 0),
    Question(question: "What does the President of India do before assuming office?", options: ["Takes an oath to follow the Constitution", "Appoints ministers", "Chooses the Prime Minister", "Signs the first law"], answerIndex: 0),
    Question(question: "How can the President be removed from office?", options: ["By impeachment process in Parliament", "By the Supreme Court", "By popular vote", "By resignation"], answerIndex: 0),
  ];
}
static List<Question> _getPartVIQuestions() {
  return [
    Question(question: "What is the role of the Governor in a state?", options: ["Head of the state", "Head of the government", "Head of the local police", "Supreme Court judge"], answerIndex: 0),
    Question(question: "Who helps the Governor in the state administration?", options: ["Chief Minister", "Prime Minister", "Members of Parliament", "State Legislators"], answerIndex: 0),
    Question(question: "Who appoints the Governor of a state?", options: ["President of India", "Prime Minister", "Chief Minister", "State Legislature"], answerIndex: 0),
    Question(question: "How long is the Governor's term in office?", options: ["5 years", "6 years", "4 years", "Indefinite"], answerIndex: 0),
    Question(question: "Can the Governor leave office before their term ends?", options: ["Yes, if the President decides", "No, they must complete their term", "Yes, if the Chief Minister requests", "Yes, after 2 years"], answerIndex: 0),
    Question(question: "What power does the Governor have regarding state crimes?", options: ["Can pardon certain crimes", "Can impose death sentences", "Can arrest criminals", "Can appoint judges"], answerIndex: 0),
    Question(question: "Who chooses the Chief Minister of a state?", options: ["The Governor", "The President", "The Prime Minister", "The State Legislature"], answerIndex: 0),
    Question(question: "Can the Governor dissolve the State Legislative Assembly?", options: ["Yes", "No", "Only with the President's approval", "Only with the Chief Minister's approval"], answerIndex: 0),
    Question(question: "What happens if a Governor's actions are unconstitutional?", options: ["They can be impeached by Parliament", "They can be dismissed by the Chief Minister", "They can be removed by the President", "They can be reassigned to another state"], answerIndex: 2),
    Question(question: "How is the Governor's power limited?", options: ["It must be exercised with the aid of the Chief Minister", "It must be exercised with the advice of the President", "It must align with the wishes of Parliament", "It is unlimited and final"], answerIndex: 0),
  ];
}
static List<Question> _getPartVIIIQuestions() {
  return [
    Question(question: "What is the role of the Administrator (or Lieutenant Governor) in Union Territories?", options: ["To manage the Union Territories", "To make laws", "To represent the President", "To control police and land"], answerIndex: 0),
    Question(question: "Who appoints the Administrator of Union Territories?", options: ["President of India", "Prime Minister", "Chief Minister", "State Legislature"], answerIndex: 0),
    Question(question: "Which Union Territories have their own legislatures and ministers?", options: ["Delhi and Puducherry", "Andaman and Nicobar Islands", "Lakshadweep", "Dadra and Nagar Haveli"], answerIndex: 0),
    Question(question: "What powers does the President have over Union Territories?", options: ["Can make rules or laws directly", "Can dissolve the legislature", "Can appoint Chief Ministers", "Can control police and land"], answerIndex: 0),
    Question(question: "What is the special status of Delhi?", options: ["Own legislature but central government controls key areas", "Complete autonomy like a state", "No legislature", "Directly governed by the President"], answerIndex: 0),
    Question(question: "What is the role of the local legislature in Union Territories like Delhi?", options: ["To make local laws", "To control police and land", "To manage relations with states", "To enact national laws"], answerIndex: 0),
    Question(question: "Which Union Territory is directly controlled by the central government without local legislature?", options: ["Andaman and Nicobar Islands", "Delhi", "Puducherry", "Lakshadweep"], answerIndex: 0),
    Question(question: "Who handles the legal matters of Union Territories?", options: ["Local courts or nearby state High Court", "Supreme Court", "State Courts", "District Magistrate"], answerIndex: 0),
    Question(question: "What happens when a Union Territory does not have its own legislature?", options: ["It is governed directly by the President", "It is managed by the central government without local input", "It has a local representative in Parliament", "It is governed by a Chief Minister"], answerIndex: 0),
    Question(question: "Which article gives the President the power to make rules for Union Territories?", options: ["Article 240", "Article 239A", "Article 241", "Article 239"], answerIndex: 0),
  ];
}
static List<Question> _getPartIXQuestions() {
  return [
    Question(question: "What is the Gram Sabha?", options: ["Village meetings where all adults participate", "A group of village leaders", "A village council of elders", "A local law-making body"], answerIndex: 0),
    Question(question: "What is the role of the Panchayats?", options: ["To manage local village affairs", "To make national laws", "To oversee state government functions", "To control police matters"], answerIndex: 0),
    Question(question: "Who elects the members of the Panchayat?", options: ["The people of the village", "The Chief Minister", "The President", "State legislators"], answerIndex: 0),
    Question(question: "Which issues do Panchayats manage?", options: ["Roads, water, schools, and local infrastructure", "Foreign policy", "Defense and security", "National education policies"], answerIndex: 0),
    Question(question: "What is the purpose of reserved seats in Panchayats?", options: ["To ensure representation for women and Scheduled Castes and Tribes", "To give seats to the wealthiest families", "To favor larger political parties", "To provide seats for senior citizens"], answerIndex: 0),
    Question(question: "What is the minimum requirement for village meetings?", options: ["All adults in the village must attend", "Only village leaders are invited", "Only government officials attend", "It is optional for the villagers"], answerIndex: 0),
    Question(question: "How are Panchayat members chosen?", options: ["By the villagers through elections", "Appointed by the President", "Chosen by the Chief Minister", "Elected by the Parliament"], answerIndex: 0),
    Question(question: "Which groups benefit from the reserved seats in Panchayats?", options: ["Women and people from Scheduled Castes and Scheduled Tribes", "Only women", "Only Scheduled Castes", "People over 50 years old"], answerIndex: 0),
    Question(question: "What role does the Gram Sabha play in the Panchayat system?", options: ["It discusses important matters affecting the village", "It enforces laws", "It creates new political parties", "It collects taxes"], answerIndex: 0),
    Question(question: "Which article deals with the reservation of seats in Panchayats?", options: ["Article 243D", "Article 243A", "Article 243B", "Article 243C"], answerIndex: 0),
  ];
}
static List<Question> _getPartXQuestions() {
  return [
    Question(question: "What is the purpose of special rules for Tribal areas?", options: ["To protect their culture and land", "To promote urbanization", "To build large cities", "To create new businesses"], answerIndex: 0),
    Question(question: "Where are the special rules for Tribal areas mentioned?", options: ["Article 244", "Article 243", "Article 240", "Article 241"], answerIndex: 0),
    Question(question: "What areas are protected by the special rules in Part X?", options: ["Tribal areas, forests, and lands", "Urban cities", "Industrial zones", "Rural agricultural lands"], answerIndex: 0),
    Question(question: "Why are special rules applied to Tribal areas?", options: ["To safeguard the rights of tribal people", "To integrate tribal people into mainstream society", "To promote tourism", "To build infrastructure"], answerIndex: 0),
    Question(question: "What do the special rules for Tribal areas protect?", options: ["Culture and land", "Education and health care", "Economic interests", "Political representation"], answerIndex: 0),
    Question(question: "Who benefits from the special rules for Tribal areas?", options: ["Tribal communities", "Non-tribal communities", "The government", "International organizations"], answerIndex: 0),
    Question(question: "Which of these is a key focus of the rules for Tribal areas?", options: ["Preserving indigenous traditions and lands", "Promoting global trade", "Increasing industrial development", "Building airports"], answerIndex: 0),
    Question(question: "Are Tribal areas governed by the same rules as other areas in India?", options: ["No, they have special provisions", "Yes, they follow the same rules", "Yes, but with some exceptions", "No, they are excluded from the Constitution"], answerIndex: 0),
    Question(question: "What do the special rules for Tribal areas help prevent?", options: ["Exploitation of tribal people and land", "Overdevelopment", "Foreign influence", "Cultural loss"], answerIndex: 0),
    Question(question: "How does Article 244 relate to Tribal areas?", options: ["It provides the framework for special rules in these areas", "It defines tribal culture", "It sets up elections in Tribal areas", "It allocates resources for Tribal areas"], answerIndex: 0),
  ];
}
static List<Question> _getPartXIQuestions() {
  return [
    Question(question: "Who makes laws for the entire country?", options: ["Parliament", "State Legislatures", "President", "Prime Minister"], answerIndex: 0),
    Question(question: "Who makes laws for individual states?", options: ["State Legislatures", "Parliament", "Supreme Court", "Governors"], answerIndex: 0),
    Question(question: "Which list contains laws that only Parliament can make?", options: ["Union List", "State List", "Concurrent List", "Reserved List"], answerIndex: 0),
    Question(question: "Which list contains laws that only states can make?", options: ["State List", "Union List", "Concurrent List", "National List"], answerIndex: 0),
    Question(question: "Which list contains laws that both Parliament and states can make?", options: ["Concurrent List", "Union List", "State List", "Federal List"], answerIndex: 0),
    Question(question: "What are some topics under the Union List?", options: ["Defense, foreign affairs", "Education, health", "Police, agriculture", "Transport, sanitation"], answerIndex: 0),
    Question(question: "What are some topics under the State List?", options: ["Police, hospitals", "Defense, foreign affairs", "Foreign trade, currency", "Environmental policies"], answerIndex: 0),
    Question(question: "What are some topics in the Concurrent List?", options: ["Education", "Agriculture", "Defense", "Police"], answerIndex: 0),
    Question(question: "Who resolves conflicts between Union and State laws in the Concurrent List?", options: ["Parliament", "Supreme Court", "State Legislature", "President"], answerIndex: 1),
    Question(question: "Which article deals with the distribution of law-making powers?", options: ["Article 246", "Article 245", "Article 247", "Article 244"], answerIndex: 0),
  ];
}
static List<Question> _getPartXIIQuestions() {
  return [
    Question(question: "Who can collect taxes in India?", options: ["Only as allowed by law", "Anyone", "Only the central government", "Only state governments"], answerIndex: 0),
    Question(question: "Which article talks about the collection of taxes?", options: ["Article 265", "Article 260", "Article 275", "Article 280"], answerIndex: 0),
    Question(question: "What does the Finance Commission do?", options: ["Decides how money is shared between central and state governments", "Regulates taxes", "Creates tax laws", "Approves the national budget"], answerIndex: 0),
    Question(question: "Which article deals with the Finance Commission?", options: ["Article 280", "Article 275", "Article 265", "Article 290"], answerIndex: 0),
    Question(question: "Can taxes be collected without legal authorization?", options: ["No, only as per law", "Yes, with permission from Parliament", "Yes, if needed for development", "No, if approved by the state"], answerIndex: 0),
    Question(question: "What is the main role of the Finance Commission?", options: ["To recommend how to share money between central and state governments", "To collect taxes", "To issue loans to states", "To approve state budgets"], answerIndex: 0),
    Question(question: "Which body is responsible for sharing financial resources between central and state governments?", options: ["Finance Commission", "Parliament", "Reserve Bank of India", "Supreme Court"], answerIndex: 0),
    Question(question: "Who decides how much money the central government gives to states?", options: ["Finance Commission", "Prime Minister", "President", "Parliament"], answerIndex: 0),
    Question(question: "What is the role of taxes in the Constitution of India?", options: ["To regulate financial resources", "To limit government spending", "To prevent inflation", "To promote state independence"], answerIndex: 0),
    Question(question: "Are there any restrictions on who can collect taxes in India?", options: ["Yes, only those authorized by law can collect taxes", "No, anyone can collect taxes", "Yes, only the state government can collect taxes", "No, as long as the collection is for public benefit"], answerIndex: 0),
  ];
}
static List<Question> _getPartXIIIQuestions() {
  return [
    Question(question: "What does Part XIII of the Constitution deal with?", options: ["Trade and commerce", "Finance and taxes", "Panchayats", "Tribal areas"], answerIndex: 0),
    Question(question: "What does Article 301 ensure?", options: ["Freedom of trade between states", "Equal distribution of resources", "Freedom of speech", "Protection of minority rights"], answerIndex: 0),
    Question(question: "Can goods be moved freely between states?", options: ["Yes, as per Article 301", "No, only with a permit", "Yes, but with customs duties", "No, if the state government objects"], answerIndex: 0),
    Question(question: "What is the main idea behind the freedom of trade?", options: ["To ensure no restrictions on the movement of goods", "To protect local businesses", "To promote international trade", "To limit competition between states"], answerIndex: 0),
    Question(question: "Which article guarantees the freedom of trade in India?", options: ["Article 301", "Article 302", "Article 300", "Article 300A"], answerIndex: 0),
    Question(question: "Which of the following is allowed under Article 301?", options: ["Free movement of goods between states", "Imposing taxes on inter-state trade", "Establishing trade restrictions", "State governments regulating prices"], answerIndex: 0),
    Question(question: "What is the purpose of Part XIII of the Constitution?", options: ["To ensure the smooth flow of trade", "To regulate imports and exports", "To control domestic market prices", "To set tax rates for businesses"], answerIndex: 0),
    Question(question: "Which type of trade does Part XIII cover?", options: ["Inter-state trade", "International trade", "Intra-state trade", "Private market trade"], answerIndex: 0),
    Question(question: "Can a state impose trade restrictions under Article 301?", options: ["No, it must allow free movement of goods", "Yes, with approval from the central government", "Yes, for protectionist reasons", "No, unless the President approves"], answerIndex: 0),
    Question(question: "How does Article 301 benefit businesses in India?", options: ["By allowing free trade across the country", "By limiting foreign competition", "By controlling prices of goods", "By providing tax exemptions"], answerIndex: 0),
  ];
}
static List<Question> _getPartXIVQuestions() {
  return [
    Question(question: "What does Part XIV of the Constitution deal with?", options: ["Services under the Union and States", "Trade and commerce", "Finance and taxes", "Panchayats"], answerIndex: 0),
    Question(question: "What is the main topic of Article 308?", options: ["Government jobs", "Freedom of trade", "Finance distribution", "Impeachment procedures"], answerIndex: 0),
    Question(question: "Who makes the rules for government jobs?", options: ["The government", "The President", "The Parliament", "The Prime Minister"], answerIndex: 0),
    Question(question: "Which areas are included in government jobs?", options: ["Schools, police, health centers", "Private companies", "Foreign relations", "Judiciary positions"], answerIndex: 0),
    Question(question: "What kind of jobs are covered under Part XIV?", options: ["Government office jobs", "Private sector jobs", "Foreign service jobs", "International organization jobs"], answerIndex: 0),
    Question(question: "Which article talks about rules for government jobs?", options: ["Article 308", "Article 305", "Article 310", "Article 300"], answerIndex: 0),
    Question(question: "What does Article 308 specifically address?", options: ["Rules for government jobs", "State government powers", "Legislative procedures", "Trade regulations"], answerIndex: 0),
    Question(question: "Are jobs in government offices governed by specific rules?", options: ["Yes, made by the government", "No, they are based on personal decisions", "Yes, but they vary by state", "No, they are decided by the Prime Minister"], answerIndex: 0),
    Question(question: "What is the main focus of government job regulations under Article 308?", options: ["Ensuring fair recruitment", "Managing state budgets", "Regulating private sector jobs", "Handling trade restrictions"], answerIndex: 0),
    Question(question: "Which sectors are directly related to government jobs as per Part XIV?", options: ["Education, law enforcement, healthcare", "Agriculture, trade, tourism", "Entertainment, finance, media", "Sports, defense, environment"], answerIndex: 0),
  ];
}
static List<Question> _getPartXVQuestions() {
  return [
    Question(question: "What does Part XV of the Constitution deal with?", options: ["Elections", "Trade and commerce", "Panchayats", "Finance and taxes"], answerIndex: 0),
    Question(question: "What is the role of the Election Commission?", options: ["To manage elections", "To make laws for elections", "To supervise courts", "To appoint election officials"], answerIndex: 0),
    Question(question: "Which article talks about the Election Commission?", options: ["Article 324", "Article 320", "Article 308", "Article 330"], answerIndex: 0),
    Question(question: "Who manages elections in India?", options: ["The Election Commission", "The Parliament", "The President", "The Prime Minister"], answerIndex: 0),
    Question(question: "What is the minimum age required to vote in India?", options: ["18 years", "21 years", "25 years", "16 years"], answerIndex: 0),
    Question(question: "Which article gives voting rights to Indian citizens?", options: ["Article 326", "Article 324", "Article 329", "Article 328"], answerIndex: 0),
    Question(question: "What does Article 326 ensure?", options: ["Voting rights for citizens aged 18 and older", "Fair representation of states in elections", "Regulation of election laws", "Restrictions on voting rights"], answerIndex: 0),
    Question(question: "Can courts interfere with elections once they have started?", options: ["No, courts cannot interfere", "Yes, courts can cancel elections", "Yes, if there is corruption", "No, only with President’s approval"], answerIndex: 0),
    Question(question: "What is the purpose of Article 329?", options: ["To prevent court interference in elections", "To define election laws", "To set the election schedule", "To allow judicial review of elections"], answerIndex: 0),
    Question(question: "Which article prohibits court interference in elections?", options: ["Article 329", "Article 324", "Article 328", "Article 325"], answerIndex: 0),
  ];
}
static List<Question> _getPartXVIQuestions() {
  return [
    Question(question: "What does Part XVI of the Constitution deal with?", options: ["Special Provisions for certain classes", "National security", "Panchayats", "Judicial matters"], answerIndex: 0),
    Question(question: "What is the purpose of Article 330?", options: ["To reserve seats for Scheduled Castes and Tribes in the Lok Sabha", "To set election rules for SCs and STs", "To provide job opportunities for SCs and STs", "To regulate the representation of women in the Lok Sabha"], answerIndex: 0),
    Question(question: "Who can appoint members from the Anglo-Indian community to the Lok Sabha?", options: ["The President of India", "The Speaker of Lok Sabha", "The Prime Minister", "The Governor"], answerIndex: 0),
    Question(question: "What does Article 332 address?", options: ["Seats for SCs and STs in State Assemblies", "Job reservations for SCs and STs", "Representation for Anglo-Indians in State Assemblies", "Financial aid to Anglo-Indian schools"], answerIndex: 0),
    Question(question: "Who can appoint one Anglo-Indian member to the State Assembly?", options: ["The Governor of the state", "The President of India", "The Chief Minister of the state", "The Speaker of the Assembly"], answerIndex: 0),
    Question(question: "How long were the reservations for SCs, STs, and Anglo-Indians originally meant to last?", options: ["10 years", "5 years", "20 years", "Indefinitely"], answerIndex: 0),
    Question(question: "What does Article 335 focus on?", options: ["Claims of SCs and STs to services and jobs", "Economic benefits for SCs and STs", "Education benefits for SCs and STs", "Health services for SCs and STs"], answerIndex: 0),
    Question(question: "What was the purpose of Article 336?", options: ["Special provisions for Anglo-Indians in jobs", "Reservation of seats for Anglo-Indians in Lok Sabha", "Recognition of SCs and STs", "Financial aid to Anglo-Indians"], answerIndex: 0),
    Question(question: "What did Article 338 establish?", options: ["National Commission for Scheduled Castes", "National Commission for Women", "State Commission for Scheduled Tribes", "National Human Rights Commission"], answerIndex: 0),
    Question(question: "What is the role of the National Commission for Scheduled Tribes as per Article 338A?", options: ["To protect the rights of Scheduled Tribes", "To recommend education policies", "To study job reservations", "To regulate government budgets"], answerIndex: 0),
  ];
}
static List<Question> _getPartXVIIQuestions() {
  return [
    Question(question: "What is the official language of India as per Article 343?", options: ["Hindi in Devanagari script", "English", "Sanskrit", "Tamil"], answerIndex: 0),
    Question(question: "How long will English be used alongside Hindi for official work?", options: ["For 15 years after the Constitution began", "Indefinitely", "For 10 years after the Constitution began", "Until Hindi is widely spoken"], answerIndex: 0),
    Question(question: "What is the role of the Commission set up under Article 344?", options: ["To advise on language use in India", "To decide the official languages of each state", "To teach Hindi", "To write laws in regional languages"], answerIndex: 0),
    Question(question: "What can a state do according to Article 345?", options: ["Choose its own official language", "Use only Hindi", "Use only English", "Use only regional languages"], answerIndex: 0),
    Question(question: "What language must states use for communication with the central government?", options: ["Hindi or English", "Only Hindi", "Only English", "Regional languages"], answerIndex: 0),
    Question(question: "What happens if many people in a state speak a different language?", options: ["The President can allow that language for official use", "The state must adopt Hindi", "The state can only use English", "The state must abandon the language"], answerIndex: 0),
    Question(question: "In what language must all laws be written according to Article 348?", options: ["English", "Hindi", "Regional language", "Sanskrit"], answerIndex: 0),
    Question(question: "What must states do with their laws according to Article 348?", options: ["Provide an English version", "Only write them in their official language", "Translate them into Hindi", "Send them to the President for approval"], answerIndex: 0),
    Question(question: "What does Article 350A require for education?", options: ["States must provide education in a child’s mother tongue", "Schools must teach Hindi", "Education must be in English", "States must provide education in Hindi"], answerIndex: 0),
    Question(question: "What does Article 351 focus on?", options: ["Promoting Hindi while respecting all other Indian languages", "Making English the official language", "Providing education in Hindi", "Changing the official language of India"], answerIndex: 0),
  ];
}
static List<Question> _getPartXVIIIQuestions() {
  return [
    Question(question: "Under what conditions can an emergency be declared as per Article 352?", options: ["War, threat of war, or serious danger to security", "Natural disaster", "Political instability", "Economic crisis"], answerIndex: 0),
    Question(question: "Who can declare an emergency in India?", options: ["The President", "The Prime Minister", "The Cabinet", "The Parliament"], answerIndex: 0),
    Question(question: "What special power does the central government gain during an emergency?", options: ["Control over state matters like police and health", "Control over all states' finances", "Control over education", "Control over media"], answerIndex: 0),
    Question(question: "What happens to financial matters during an emergency as per Article 354?", options: ["The President can make changes to financial management", "States take over financial management", "The central government is not involved in finance", "Parliament controls all finances"], answerIndex: 0),
    Question(question: "What is the duty of the Union government under Article 355?", options: ["To protect states from threats like rebellion or invasion", "To control the state governments", "To manage financial matters in states", "To impose President's Rule in states"], answerIndex: 0),
    Question(question: "When can President's Rule be declared in a state?", options: ["When a state's government cannot function properly", "When a state's economy collapses", "When a state requests federal help", "When a state’s population rises"], answerIndex: 0),
    Question(question: "How long can President's Rule last?", options: ["Six months, extendable with Parliament's approval", "Indefinitely", "One year", "Three months"], answerIndex: 0),
    Question(question: "What happens to the state's legislature during President's Rule?", options: ["It may be suspended", "It continues to function", "The President takes control", "It becomes an advisory body"], answerIndex: 0),
    Question(question: "What rights can be suspended during an emergency according to Article 359?", options: ["Certain fundamental rights", "All rights", "Only economic rights", "No rights can be suspended"], answerIndex: 0),
    Question(question: "What is a financial emergency as per Article 360?", options: ["A situation where the government faces financial collapse", "A situation of war", "A national debt crisis", "A natural disaster causing economic loss"], answerIndex: 0),
  ];
}
static List<Question> _getPartXIXQuestions() {
  return [
    Question(question: "What is the protection provided to the President according to Article 361?", options: ["The President cannot be sued or arrested", "The President can be sued for official actions", "The President can be arrested during office", "The President is immune to impeachment"], answerIndex: 0),
    Question(question: "What does Article 362 ensure?", options: ["Protection of minority rights", "Immunity for state governments", "Power to dissolve the Parliament", "Independence of the judiciary"], answerIndex: 0),
    Question(question: "Which matters cannot be challenged in courts according to Article 363?", options: ["Decisions made by the President or Governor with special powers", "State laws", "Matters of public interest", "Administrative decisions by the Union"], answerIndex: 0),
    Question(question: "What power does Article 364 give the President?", options: ["The power to make laws for Union Territories", "The power to dissolve Parliament", "The power to change state constitutions", "The power to appoint Governors"], answerIndex: 0),
    Question(question: "What happens if a state does not comply with Union directions as per Article 365?", options: ["The state's financial support from the Union may be affected", "The state can be dissolved", "The state must immediately comply", "The state's leaders are removed from office"], answerIndex: 0),
    Question(question: "What does Article 366 define?", options: ["Important terms used in the Constitution", "The roles of the Prime Minister", "The powers of the Judiciary", "The relationship between Union and states"], answerIndex: 0),
    Question(question: "How does Article 367 help in case of confusion about the Constitution?", options: ["The President can explain the meaning", "The Supreme Court provides clarification", "The Parliament issues amendments", "The President dissolves any conflicting law"], answerIndex: 0),
    Question(question: "What is the purpose of Article 361?", options: ["To protect the President and Governors from lawsuits", "To define the powers of the judiciary", "To describe the relationship between the Union and States", "To outline the duties of the Prime Minister"], answerIndex: 0),
    Question(question: "What is described in Article 363?", options: ["It bars court jurisdiction over matters decided by the President or Governor", "It describes the duties of the President", "It explains the electoral process", "It outlines the role of the Lok Sabha"], answerIndex: 0),
    Question(question: "What does Article 364 give the President the power to do?", options: ["Make laws for Union Territories", "Impose financial sanctions on states", "Appoint ministers in the Union", "Modify the Constitution"], answerIndex: 0),
  ];
}
static List<Question> _getPartXXQuestions() {
  return [
    Question(question: "Who can change or amend the Constitution of India?", options: ["Only Parliament", "The President", "The Supreme Court", "The Chief Justice of India"], answerIndex: 0),
    Question(question: "What must Parliament do to amend the Constitution?", options: ["Pass a law", "Hold a referendum", "Pass an executive order", "Hold a national election"], answerIndex: 0),
    Question(question: "Can both houses of Parliament be involved in amending the Constitution?", options: ["Yes, both Lok Sabha and Rajya Sabha must agree", "No, only the Lok Sabha is needed", "No, only the Rajya Sabha is needed", "Yes, but the President must approve first"], answerIndex: 0),
    Question(question: "Can state legislatures be involved in constitutional amendments?", options: ["Yes, for certain amendments", "No, they have no role", "Yes, in all cases", "Only if the President allows"], answerIndex: 0),
    Question(question: "What happens after an amendment is passed?", options: ["It becomes part of the Constitution", "The President must approve it", "It is debated in the Supreme Court", "It is sent to the states for approval"], answerIndex: 0),
    Question(question: "Is the process of amending the Constitution easy?", options: ["No, it requires a special process", "Yes, it's quick and simple", "Yes, only Parliament can make changes", "No, but the President can do it easily"], answerIndex: 0),
    Question(question: "What kind of changes require approval from state legislatures?", options: ["Certain constitutional amendments", "All changes to fundamental rights", "Changes to the President's powers", "Changes to parliamentary procedures"], answerIndex: 0),
    Question(question: "What does Article 368 describe?", options: ["The process for amending the Constitution", "The powers of the President", "The role of the Prime Minister", "The election procedures for Parliament"], answerIndex: 0),
    Question(question: "Why is the process of amending the Constitution not simple?", options: ["To keep the Constitution stable while allowing necessary changes", "To ensure that the President has full control", "To prevent the Supreme Court from making changes", "To give the Parliament unlimited power"], answerIndex: 0),
    Question(question: "How does the Constitution ensure that amendments are not made too easily?", options: ["It requires a thorough process with approval from both Parliament and sometimes state legislatures", "It allows the President to make changes anytime", "It only requires the Lok Sabha's approval", "It allows only the Chief Justice to make amendments"], answerIndex: 0),
  ];
}
static List<Question> _getPartXXIQuestions() {
  return [
    Question(question: "What does Part XXI of the Constitution deal with?", options: ["Special rules and temporary measures after independence", "Amendments to the Constitution", "The powers of the President", "The rights of citizens"], answerIndex: 0),
    Question(question: "What did Article 369 allow Parliament to do?", options: ["Make laws on subjects usually handled by states", "Declare war", "Appoint judges", "Control state governments"], answerIndex: 0),
    Question(question: "When was the special provision for Jammu and Kashmir removed?", options: ["2019", "2000", "1991", "2015"], answerIndex: 0),
    Question(question: "Why were special provisions made for states like Maharashtra and Gujarat?", options: ["To help with their adjustment after separation", "To control their population", "To increase taxes", "To limit their resources"], answerIndex: 0),
    Question(question: "What was the purpose of Article 371A for Nagaland?", options: ["To protect its culture and traditions", "To promote foreign trade", "To change its economic system", "To make it a union territory"], answerIndex: 0),
    Question(question: "What does Article 372 talk about?", options: ["Continuance and adaptation of existing laws", "The role of the President", "Rules for state elections", "Rights of citizens in special situations"], answerIndex: 0),
    Question(question: "What special provision did Article 371E provide to Andhra Pradesh?", options: ["Establishment of a central university", "Special voting rights for citizens", "Independence from the central government", "No special provisions"], answerIndex: 0),
    Question(question: "What did Article 373 allow the President to do?", options: ["Make orders about preventive detention", "Change the Constitution", "Set up new states", "Appoint judges"], answerIndex: 0),
    Question(question: "Why were some articles omitted from the Constitution?", options: ["They were no longer needed after a certain time", "They were replaced by new articles", "They were too complex", "They were not agreed upon"], answerIndex: 0),
    Question(question: "What was the main purpose of the special provisions for Sikkim?", options: ["To protect its culture and traditions after joining India", "To provide more resources to the state", "To ensure political stability", "To establish a new state capital"], answerIndex: 0),
  ];
}
static List<Question> _getPartXXIIQuestions() {
  return [
    Question(question: "What is the short title of the Constitution of India?", options: ["Constitution of India", "Indian Constitution", "Constitution of the Republic", "India's Law Book"], answerIndex: 0),
    Question(question: "When did the Constitution of India come into effect?", options: ["January 26, 1950", "August 15, 1947", "October 2, 1950", "December 25, 1950"], answerIndex: 0),
    Question(question: "What is the official language for the authoritative text of the Constitution?", options: ["Hindi", "English", "Sanskrit", "Bengali"], answerIndex: 0),
    Question(question: "What was the significance of January 26, 1950?", options: ["The Constitution came into effect", "The first President of India was elected", "Independence was declared", "The first Parliament session was held"], answerIndex: 0),
    Question(question: "What does Article 394A establish?", options: ["The authoritative Hindi version of the Constitution", "The language of the Parliament", "The name of the Constitution", "The Supreme Court's powers"], answerIndex: 0),
    Question(question: "What does Article 395 say about old laws?", options: ["They were repealed", "They were amended", "They were replaced by new laws", "They were kept unchanged"], answerIndex: 0),
    Question(question: "Which language was the Constitution first written in?", options: ["English", "Hindi", "Sanskrit", "Urdu"], answerIndex: 0),
    Question(question: "What happens to the old laws under Article 395?", options: ["They are canceled and no longer valid", "They are amended", "They are continued temporarily", "They are preserved as guidelines"], answerIndex: 0),
    Question(question: "Which day is celebrated as Republic Day in India?", options: ["January 26", "August 15", "October 2", "November 15"], answerIndex: 0),
    Question(question: "What does the authoritative Hindi version of the Constitution mean?", options: ["It is an official and trusted version", "It is only used for educational purposes", "It replaces the English version", "It is used only in courts"], answerIndex: 0),
  ];
}
static List<Question> _getSchedulesQuestions() {
  return [
    Question(question: "What is listed in the First Schedule of the Constitution?", options: ["States and Union Territories of India", "Rights of Citizens", "Powers of Parliament", "Provisions for the President"], answerIndex: 0),
    Question(question: "What is the role of the Second Schedule?", options: ["Provisions about the President, Governors, Speakers, and Judges", "Lists the official languages of India", "Lists the subjects in the Union, State, and Concurrent Lists", "Details the allocation of seats in Parliament"], answerIndex: 0),
    Question(question: "What does the Third Schedule contain?", options: ["Oaths or Affirmations for various officials", "List of states and Union Territories", "Duties of the President", "Reserved laws for the country"], answerIndex: 0),
    Question(question: "What is the focus of the Fifth Schedule?", options: ["Administration and Control of Scheduled Areas and Tribes", "Rules for Panchayats", "Provisions about languages", "Disqualification of members from Parliament"], answerIndex: 0),
    Question(question: "Which states are covered by the Sixth Schedule?", options: ["Assam, Meghalaya, Tripura, and Mizoram", "Kerala, Tamil Nadu, Andhra Pradesh, and Telangana", "Uttarakhand, Himachal Pradesh, Goa, and Nagaland", "Bihar, Odisha, and Rajasthan"], answerIndex: 0),
    Question(question: "What does the Seventh Schedule cover?", options: ["Union, State, and Concurrent Lists for law-making", "Powers of Municipalities", "Powers of the President", "Provisions for Disqualification of MPs"], answerIndex: 0),
    Question(question: "What does the Ninth Schedule help with?", options: ["Protecting certain laws from being challenged", "Allocating seats in the Rajya Sabha", "Defining powers of Panchayats", "Establishing the official languages of India"], answerIndex: 0),
    Question(question: "What is the purpose of the Tenth Schedule?", options: ["Disqualification rules for members who change parties", "Special provisions for Jammu and Kashmir", "Details of state and union territories", "Rules for tribal area governance"], answerIndex: 0),
    Question(question: "What does the Eleventh Schedule describe?", options: ["Powers and responsibilities of Panchayats", "Powers of the President", "List of official languages", "Rules for judges' appointments"], answerIndex: 0),
    Question(question: "What is explained in the Twelfth Schedule?", options: ["Powers and responsibilities of Municipalities", "Powers of the President", "Rights of citizens", "Law-making processes in the Parliament"], answerIndex: 0),
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
