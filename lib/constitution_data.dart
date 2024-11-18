class ConstitutionArticle {
  final String article;
  final String description;
  final String part;
  final String fullDetails; // Full details of the article

  ConstitutionArticle({
    required this.article,
    required this.description,
    required this.part,
    required this.fullDetails, // Add full details for each article
  });
}

class ConstitutionPart {
  final String title;
  final String description;

  ConstitutionPart({required this.title, required this.description});
}

// Updated sample data for constitution articles (with full details)
List<ConstitutionArticle> constitutionArticles = [
  // Part I - Union and its Territory
  ConstitutionArticle(
    article: "Article 1",
    description: "India as a Union",
    part: "Part I",
    fullDetails: """
Article 1: India as a Union
India, also called Bharat, is made up of several states and Union territories that form one big country.
""",
  ),
  ConstitutionArticle(
    article: "Article 2",
    description: "Adding New States",
    part: "Part I",
    fullDetails: """
Article 2: Adding New States
Parliament, the main decision-making group, can add new states to India or merge areas to form new states, based on certain conditions.
""",
  ),
  ConstitutionArticle(
    article: "Article 3",
    description: "Changing State Borders",
    part: "Part I",
    fullDetails: """
Article 3: Changing State Borders
Parliament can change the size, name, or borders of any state, but before doing so, it must follow certain steps, like consulting with state leaders.
""",
  ),
  ConstitutionArticle(
    article: "Article 4",
    description: "Details for Changes",
    part: "Part I",
    fullDetails: """
Article 4: Details for Changes
Any changes made to the states or Union territories are recorded in the Constitution, so they become official.
""",
  ),
  
  // Part II - Citizenship
  ConstitutionArticle(
    article: "Article 5",
    description: "Citizenship by Birth",
    part: "Part II",
    fullDetails: """
Article 5: Citizenship by Birth
If you are born in India, you automatically become a citizen of India.
""",
  ),
  ConstitutionArticle(
    article: "Article 6",
    description: "Citizenship for People from Pakistan",
    part: "Part II",
    fullDetails: """
Article 6: Citizenship for People from Pakistan
1. If your mom or dad was born in India, you are a citizen, even if you were born in another country.
2. If you or your parents moved from Pakistan to India before July 19, 1948, you are a citizen.
3. If you moved after that date, you must register to become a citizen.
""",
  ),
  ConstitutionArticle(
    article: "Article 7",
    description: "Losing Citizenship",
    part: "Part II",
    fullDetails: """
Article 7: Losing Citizenship
If you decide to become a citizen of another country, you will lose your Indian citizenship.
""",
  ),
  ConstitutionArticle(
    article: "Article 8",
    description: "Citizenship by Residency",
    part: "Part II",
    fullDetails: """
Article 8: Citizenship by Residency
If you have lived in India for five years or more, you can apply to become a citizen.
""",
  ),
  ConstitutionArticle(
    article: "Article 9",
    description: "The Role of Parliament",
    part: "Part II",
    fullDetails: """
Article 9: The Role of Parliament
The Parliament of India can make laws about how people can become citizens and how citizenship can be taken away.
""",
  ),

  // Part III - Fundamental Rights
  ConstitutionArticle(
    article: "Article 12",
    description: "What is the State?",
    part: "Part III",
    fullDetails: """
Article 12: What is the State?
In this part, "the State" means the Government of India, the governments of each state, and local authorities in India.
""",
  ),
  ConstitutionArticle(
    article: "Article 13",
    description: "Laws Must Follow Fundamental Rights",
    part: "Part III",
    fullDetails: """
Article 13: Laws Must Follow Fundamental Rights
1. Any law that goes against the rights mentioned in this Part will be considered invalid.
2. The government cannot make laws that take away the rights given in this Part.
""",
  ),
  ConstitutionArticle(
    article: "Article 14",
    description: "Right to Equality",
    part: "Part III",
    fullDetails: """
Article 14: Right to Equality
Everyone is equal before the law, which means the law treats everyone the same way.
""",
  ),
  ConstitutionArticle(
    article: "Article 15",
    description: "No Discrimination",
    part: "Part III",
    fullDetails: """
Article 15: No Discrimination
1. The government cannot treat any person unfairly based on religion, race, caste, sex, or where they were born.
2. No one can be denied access to public places like shops and parks because of these reasons.
""",
  ),
  ConstitutionArticle(
    article: "Article 16",
    description: "Equality in Jobs",
    part: "Part III",
    fullDetails: """
Article 16: Equality in Jobs
Everyone has the right to apply for any job or position in the government. No one can be treated unfairly in job matters based on religion, race, caste, or sex.
""",
  ),
  ConstitutionArticle(
    article: "Article 17",
    description: "Abolishment of Untouchability",
    part: "Part III",
    fullDetails: """
Article 17: Abolishment of Untouchability
The practice of "Untouchability" is illegal. No one can be treated as inferior to others because of their caste.
""",
  ),
  ConstitutionArticle(
    article: "Article 18",
    description: "No Titles",
    part: "Part III",
    fullDetails: """
Article 18: No Titles
1. The government cannot give titles to people, except for military or academic honors.
2. Citizens cannot accept any titles from foreign countries.
""",
  ),
  ConstitutionArticle(
    article: "Article 19",
    description: "Right to Freedom",
    part: "Part III",
    fullDetails: """
Article 19: Right to Freedom
Every citizen has the following freedoms:
1. Freedom of speech and expression.
2. The right to gather peacefully without weapons.
3. The right to form groups or unions.
4. The right to travel freely across the country.
5. The right to live and settle anywhere in India.
6. The right to work in any profession or start a business.
""",
  ),
  ConstitutionArticle(
    article: "Article 20",
    description: "Protection from Punishment",
    part: "Part III",
    fullDetails: """
Article 20: Protection from Punishment
1. No one can be punished for something that was not against the law when they did it.
2. No one can be punished twice for the same crime.
3. No one has to be a witness against themselves.
""",
  ),
  ConstitutionArticle(
    article: "Article 21",
    description: "Right to Life and Liberty",
    part: "Part III",
    fullDetails: """
Article 21: Right to Life and Liberty
No one can be taken away from their life or freedom except by following the law.
""",
  ),
  ConstitutionArticle(
    article: "Article 21A",
    description: "Right to Education",
    part: "Part III",
    fullDetails: """
Article 21A: Right to Education
The State will provide free and compulsory education to all children from the age of six to fourteen years.
""",
  ),
  ConstitutionArticle(
    article: "Article 22",
    description: "Protection against Arrest",
    part: "Part III",
    fullDetails: """
Article 22: Protection against Arrest
1. Anyone who is arrested must be told why they are being arrested.
2. They have the right to see a lawyer.
3. They must be presented before a magistrate within 24 hours of their arrest.
""",
  ),

  // Part IV - Directive Principles of State Policy
  ConstitutionArticle(
    article: "Article 38",
    description: "Welfare of the People",
    part: "Part IV",
    fullDetails: """
Article 38 – Welfare of the People
The government should improve people's lives by creating a fair society where everyone has equal opportunities and justice, covering social, economic, and political areas.
""",
  ),
  ConstitutionArticle(
    article: "Article 39",
    description: "Fairness in Resources and Work",
    part: "Part IV",
    fullDetails: """
Article 39 – Fairness in Resources and Work
The government should make sure resources like land and wealth are shared to benefit everyone, not just a few people. It also promotes "Equal Pay for Equal Work" to ensure men and women receive fair wages.
""",
  ),
  ConstitutionArticle(
    article: "Article 39A",
    description: "Help for the Poor in Legal Matters",
    part: "Part IV",
    fullDetails: """
Article 39A – Help for the Poor in Legal Matters
The government should provide help to those who cannot afford it, ensuring that everyone can access justice, regardless of their financial situation.
""",
  ),
  ConstitutionArticle(
    article: "Article 40",
    description: "Promotion of Local Governments",
    part: "Part IV",
    fullDetails: """
Article 40 – Promotion of Local Governments
The government encourages the creation of local governments to ensure that local communities can look after their own development.
""",
  ),
];
