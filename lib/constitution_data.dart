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
    description: "Definition of State.",
    part: "Part III",
    fullDetails: """
This article defines what "State" means in the Constitution. It includes the government, Parliament, and the courts.
""",
  ),
  ConstitutionArticle(
    article: "Article 13",
    description: "Laws inconsistent with or in derogation of the fundamental rights.",
    part: "Part III",
    fullDetails: """
This article says that if a law goes against the fundamental rights, that law will be considered invalid. Fundamental rights must be followed by everyone, including the government.
""",
  ),
  ConstitutionArticle(
    article: "Article 14",
    description: "Equality before law.",
    part: "Part III",
    fullDetails: """
This article says that everyone is equal before the law. No one is above the law, and everyone has the same legal rights.
""",
  ),
  ConstitutionArticle(
    article: "Article 15",
    description: "Prohibition of discrimination on grounds of religion, race, caste, sex, or place of birth.",
    part: "Part III",
    fullDetails: """
This article ensures that no one can be treated unfairly based on their religion, race, caste, sex, or where they were born.
""",
  ),
  ConstitutionArticle(
    article: "Article 16",
    description: "Equality of opportunity in matters of public employment.",
    part: "Part III",
    fullDetails: """
This article says that everyone should have equal chances to get government jobs, and no one should be stopped from applying for a job based on their background.
""",
  ),
  ConstitutionArticle(
    article: "Article 17",
    description: "Abolition of Untouchability.",
    part: "Part III",
    fullDetails: """
This article makes untouchability illegal in India. People can’t be treated unfairly because of their caste.
""",
  ),
  ConstitutionArticle(
    article: "Article 18",
    description: "Abolition of titles.",
    part: "Part III",
    fullDetails: """
This article says that titles like “Sir” or “Knight” cannot be given to people. No one can be given a special title by the government.
""",
  ),
  ConstitutionArticle(
    article: "Article 19",
    description: "Protection of certain rights regarding freedom of speech, etc.",
    part: "Part III",
    fullDetails: """
This article gives people the freedom to speak their mind, assemble peacefully, and express their opinions. It also protects the right to work in any profession.
""",
  ),
  ConstitutionArticle(
    article: "Article 20",
    description: "Protection in respect of conviction for offences.",
    part: "Part III",
    fullDetails: """
This article says that a person cannot be punished for a crime unless they have been found guilty in court. No one can be punished more than once for the same crime.
""",
  ),
  ConstitutionArticle(
    article: "Article 21",
    description: "Protection of life and personal liberty.",
    part: "Part III",
    fullDetails: """
This article ensures that everyone has the right to live and be free. The government cannot take away someone’s life or freedom without a good reason.
""",
  ),
  ConstitutionArticle(
    article: "Article 21A",
    description: "Right to education.",
    part: "Part III",
    fullDetails: """
This article says that every child between the ages of 6 and 14 has the right to free and compulsory education.
""",
  ),
  ConstitutionArticle(
    article: "Article 22",
    description: "Protection against arrest and detention in certain cases.",
    part: "Part III",
    fullDetails: """
This article ensures that no one can be arrested without being told why they are being arrested. It also protects people from being held in jail without a fair trial.
""",
  ),
  ConstitutionArticle(
    article: "Article 23",
    description: "Prohibition of traffic in human beings and forced labour.",
    part: "Part III",
    fullDetails: """
This article makes it illegal to buy or sell people (human trafficking) or force anyone to work without paying them (forced labour).
""",
  ),
  ConstitutionArticle(
    article: "Article 24",
    description: "Prohibition of employment of children in factories, etc.",
    part: "Part III",
    fullDetails: """
This article says that children under 14 cannot be made to work in factories or other dangerous jobs.
""",
  ),
  ConstitutionArticle(
    article: "Article 25",
    description: "Freedom of conscience and free profession, practice, and propagation of religion.",
    part: "Part III",
    fullDetails: """
This article gives everyone the freedom to believe in any religion and practice or spread their beliefs.
""",
  ),
  ConstitutionArticle(
    article: "Article 26",
    description: "Freedom to manage religious affairs.",
    part: "Part III",
    fullDetails: """
This article gives religious groups the right to manage their own temples, mosques, churches, and other religious places.
""",
  ),
  ConstitutionArticle(
    article: "Article 27",
    description: "Freedom as to payment of taxes for promotion of any particular religion.",
    part: "Part III",
    fullDetails: """
This article says that the government cannot make people pay taxes to support or promote any specific religion.
""",
  ),
  ConstitutionArticle(
    article: "Article 28",
    description: "Freedom as to attendance at religious instruction or religious worship in certain educational institutions.",
    part: "Part III",
    fullDetails: """
This article ensures that people can choose whether or not they want to attend religious classes or prayers in schools and colleges.
""",
  ),
  ConstitutionArticle(
    article: "Article 29",
    description: "Protection of interests of minorities.",
    part: "Part III",
    fullDetails: """
This article protects the rights of minorities (people who are different from the majority) and ensures they can keep their language, culture, and religion safe.
""",
  ),
  ConstitutionArticle(
    article: "Article 30",
    description: "Right of minorities to establish and administer educational institutions.",
    part: "Part III",
    fullDetails: """
This article gives minorities the right to set up and run their own schools or colleges.
""",
  ),
  ConstitutionArticle(
    article: "Article 31A",
    description: "Saving of laws providing for acquisition of estates, etc.",
    part: "Part III",
    fullDetails: """
This article ensures that laws related to the government taking land or property for public use are protected and can’t be easily challenged in court.
""",
  ),
  ConstitutionArticle(
    article: "Article 31B",
    description: "Validation of certain Acts and Regulations.",
    part: "Part III",
    fullDetails: """
This article says that some old laws or actions that were taken by the government before the Constitution was made are valid, even if they go against the Constitution.
""",
  ),
  ConstitutionArticle(
    article: "Article 31C",
    description: "Saving of laws giving effect to certain directive principles.",
    part: "Part III",
    fullDetails: """
This article ensures that laws made to help achieve important goals (like ending poverty or promoting education) are valid, even if they affect people’s rights.
""",
  ),
  ConstitutionArticle(
    article: "Article 31D",
    description: "Saving of laws in respect of anti-national activities.",
    part: "Part III",
    fullDetails: "This article was omitted and is no longer part of the Constitution.",
  ),
  ConstitutionArticle(
    article: "Article 32",
    description: "Remedies for enforcement of rights conferred by this Part.",
    part: "Part III",
    fullDetails: """
This article gives people the right to go to the Supreme Court if their rights are not being respected. The court can help protect their rights.
""",
  ),
  ConstitutionArticle(
    article: "Article 32A",
    description: "Constitutional validity of State laws not to be considered in proceedings under article 32.",
    part: "Part III",
    fullDetails: "This article was omitted and is no longer part of the Constitution.",
  ),
  ConstitutionArticle(
    article: "Article 33",
    description: "Power of Parliament to modify the rights conferred by this Part in their application to Forces, etc.",
    part: "Part III",
    fullDetails: """
This article gives Parliament the power to change or limit certain rights for the military, police, and other armed forces if needed.
""",
  ),
  ConstitutionArticle(
    article: "Article 34",
    description: "Restriction on rights conferred by this Part while martial law is in force in any area.",
    part: "Part III",
    fullDetails: """
This article says that some rights can be limited during martial law, which is when the military controls the law instead of the regular government.
""",
  ),
  ConstitutionArticle(
    article: "Article 35",
    description: "Legislation to give effect to the provisions of this Part.",
    part: "Part III",
    fullDetails: """
This article allows Parliament to make laws to protect and enforce the fundamental rights listed in this part of the Constitution.
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
  ConstitutionArticle(
  article: "Article 52",
  description: "The President",
  part: "Part V",
  fullDetails: """
Article 52: The President  
India has a leader called the President. The President acts like the head of the country and performs many important duties, like signing laws and representing India to the world.
""",
),

ConstitutionArticle(
  article: "Article 53",
  description: "The President’s Powers",
  part: "Part V",
  fullDetails: """
Article 53: The President’s Powers  
The President has the power to make sure the country is run well. They can ask others, like the Prime Minister and ministers, to help with their duties.
""",
),

ConstitutionArticle(
  article: "Article 54",
  description: "Choosing the President",
  part: "Part V",
  fullDetails: """
Article 54: Choosing the President  
The President is chosen by a special group of people. These are members of Parliament (the people who make laws) and members of State Assemblies (who look after each state).
""",
),

ConstitutionArticle(
  article: "Article 55",
  description: "How the President is Elected",
  part: "Part V",
  fullDetails: """
Article 55: How the President is Elected  
To make sure every state gets a fair say, votes are counted in a way that balances the population of the states and the size of Parliament.
""",
),

ConstitutionArticle(
  article: "Article 56",
  description: "The President’s Term",
  part: "Part V",
  fullDetails: """
Article 56: The President’s Term  
The President works for five years but can leave early if they want or if they are asked to step down.
""",
),

ConstitutionArticle(
  article: "Article 57",
  description: "Re-election",
  part: "Part V",
  fullDetails: """
Article 57: Re-election  
If the President has done a good job, they can be chosen again.
""",
),

ConstitutionArticle(
  article: "Article 58",
  description: "Who Can Be President",
  part: "Part V",
  fullDetails: """
Article 58: Who Can Be President  
To be President, a person must be at least 35 years old, an Indian citizen, and meet other qualifications.
""",
),

ConstitutionArticle(
  article: "Article 59",
  description: "The President’s Job Rules",
  part: "Part V",
  fullDetails: """
Article 59: The President’s Job Rules  
While working, the President cannot do any other job and must live in the President’s house, called Rashtrapati Bhavan.
""",
),

ConstitutionArticle(
  article: "Article 60",
  description: "The President’s Oath",
  part: "Part V",
  fullDetails: """
Article 60: The President’s Oath  
Before starting work, the President promises to follow the Constitution and do their job well.
""",
),

ConstitutionArticle(
  article: "Article 61",
  description: "Impeachment",
  part: "Part V",
  fullDetails: """
Article 61: Impeachment  
If the President does something wrong, Parliament can remove them by following a strict process.
""",
),

ConstitutionArticle(
  article: "Article 153",
  description: "Governors of States",
  part: "Part VI",
  fullDetails: """
Article 153: Governors of States  
Each state has a Governor. They are like the President but only for their state.
""",
),

ConstitutionArticle(
  article: "Article 154",
  description: "Governor’s Powers",
  part: "Part VI",
  fullDetails: """
Article 154: Governor’s Powers  
The Governor helps make sure the state runs smoothly and works with the Chief Minister.
""",
),

ConstitutionArticle(
  article: "Article 155",
  description: "Choosing the Governor",
  part: "Part VI",
  fullDetails: """
Article 155: Choosing the Governor  
The President of India chooses the Governor.
""",
),

ConstitutionArticle(
  article: "Article 156",
  description: "Governor’s Term",
  part: "Part VI",
  fullDetails: """
Article 156: Governor’s Term  
The Governor works for five years but can leave earlier if the President decides so.
""",
),

ConstitutionArticle(
  article: "Article 161",
  description: "Governor’s Powers",
  part: "Part VI",
  fullDetails: """
Article 161: Governor’s Powers  
The Governor can forgive people who have committed certain crimes in the state.
""",
),

ConstitutionArticle(
  article: "Article 239",
  description: "Administration of Union Territories",
  part: "Part VIII",
  fullDetails: """
Article 239: Administration of Union Territories  
The President of India chooses a person called the Administrator (or Lieutenant Governor) to manage Union Territories.
""",
),

ConstitutionArticle(
  article: "Article 239A",
  description: "Local Legislatures for Some Union Territories",
  part: "Part VIII",
  fullDetails: """
Article 239A: Local Legislatures for Some Union Territories  
Some Union Territories, like Delhi and Puducherry, are allowed to have their own small legislatures (groups of elected people) and ministers to make local laws.
""",
),

ConstitutionArticle(
  article: "Article 239AA",
  description: "Delhi's Special Rules",
  part: "Part VIII",
  fullDetails: """
Article 239AA: Delhi's Special Rules  
Delhi has a unique setup where it has its own legislature, but the central government still controls key areas like police and land.
""",
),

ConstitutionArticle(
  article: "Article 240",
  description: "President’s Powers",
  part: "Part VIII",
  fullDetails: """
Article 240: President’s Powers  
For some Union Territories, like Andaman and Nicobar Islands, the President can make rules or laws directly.
""",
),

ConstitutionArticle(
  article: "Article 241",
  description: "Courts for Union Territories",
  part: "Part VIII",
  fullDetails: """
Article 241: Courts for Union Territories  
Union Territories have courts to handle legal matters, and sometimes the High Court of a nearby state takes care of their cases.
""",
),

ConstitutionArticle(
  article: "Article 243A",
  description: "Village Meetings (Gram Sabha)",
  part: "Part IX",
  fullDetails: """
Article 243A: Village Meetings (Gram Sabha)  
Every village has a group called the Gram Sabha. It includes all adults in the village, and they discuss important matters.
""",
),

ConstitutionArticle(
  article: "Article 243B",
  description: "Panchayats",
  part: "Part IX",
  fullDetails: """
Article 243B: Panchayats  
Panchayats are groups that help run villages. They make decisions about roads, water, schools, and more.
""",
),

ConstitutionArticle(
  article: "Article 243C",
  description: "Who’s in the Panchayat?",
  part: "Part IX",
  fullDetails: """
Article 243C: Who’s in the Panchayat?  
Panchayats have members chosen by the people in the village.
""",
),

ConstitutionArticle(
  article: "Article 243D",
  description: "Reserved Seats",
  part: "Part IX",
  fullDetails: """
Article 243D: Reserved Seats  
Some seats in Panchayats are kept for women and people from Scheduled Castes and Scheduled Tribes to make sure everyone is included.
""",
),

ConstitutionArticle(
  article: "Article 244",
  description: "Special Rules",
  part: "Part X",
  fullDetails: """
Article 244: Special Rules  
Tribal areas have special rules to protect their culture and land.
""",
),

ConstitutionArticle(
  article: "Article 245",
  description: "Making Laws",
  part: "Part XI",
  fullDetails: """
Article 245: Making Laws  
Parliament makes laws for the whole country, while state legislatures make laws for their states.
""",
),

ConstitutionArticle(
  article: "Article 246",
  description: "Who Makes Which Law?",
  part: "Part XI",
  fullDetails: """
Article 246: Who Makes Which Law?  
The Constitution has three lists:  
Union List: For Parliament (e.g., defense, foreign affairs).  
State List: For states (e.g., police, hospitals).  
Concurrent List: Both can make laws (e.g., education).
""",
),

ConstitutionArticle(
  article: "Article 265",
  description: "Taxes",
  part: "Part XII",
  fullDetails: """
Article 265: Taxes  
No one can collect taxes unless the law says so.
""",
),

ConstitutionArticle(
  article: "Article 280",
  description: "Finance Commission",
  part: "Part XII",
  fullDetails: """
Article 280: Finance Commission  
A Finance Commission decides how to share money between the central and state governments.
""",
),

ConstitutionArticle(
  article: "Article 301",
  description: "Freedom of Trade",
  part: "Part XIII",
  fullDetails: """
Article 301: Freedom of Trade  
People can trade and move goods between states without problems.
""",
),

ConstitutionArticle(
  article: "Article 308",
  description: "Government Jobs",
  part: "Part XIV",
  fullDetails: """
Article 308: Government Jobs  
The government makes rules for jobs in offices like schools, police, and health centers.
""",
),

ConstitutionArticle(
  article: "Article 324",
  description: "Election Commission",
  part: "Part XV",
  fullDetails: """
Article 324: Election Commission  
The Election Commission manages elections in India to make sure they are fair.
""",
),

ConstitutionArticle(
  article: "Article 326",
  description: "Voting Rights",
  part: "Part XV",
  fullDetails: """
Article 326: Voting Rights  
Every Indian citizen aged 18 or older can vote.
""",
),

ConstitutionArticle(
  article: "Article 329",
  description: "No Court Interference",
  part: "Part XV",
  fullDetails: """
Article 329: No Court Interference  
Courts cannot stop elections once they have started.
""",
),
ConstitutionArticle(
  article: "Article 330",
  description: "Seats for Scheduled Castes and Tribes in the Lok Sabha",
  part: "Part XVI",
  fullDetails: """
Article 330: Seats for Scheduled Castes and Tribes in the Lok Sabha  
Some seats in the Lok Sabha (India's Parliament) are reserved for Scheduled Castes and Scheduled Tribes so that they have a voice in important decisions.
""",
),

ConstitutionArticle(
  article: "Article 331",
  description: "Representation for Anglo-Indian Community in the Lok Sabha",
  part: "Part XVI",
  fullDetails: """
Article 331: Representation for Anglo-Indian Community in the Lok Sabha  
If the President feels the Anglo-Indian community is not well-represented, they can appoint up to two members to the Lok Sabha.
""",
),

ConstitutionArticle(
  article: "Article 332",
  description: "Seats for Scheduled Castes and Tribes in State Assemblies",
  part: "Part XVI",
  fullDetails: """
Article 332: Seats for Scheduled Castes and Tribes in State Assemblies  
In every state's Legislative Assembly, some seats are reserved for Scheduled Castes and Scheduled Tribes to ensure their representation.
""",
),

ConstitutionArticle(
  article: "Article 333",
  description: "Representation for Anglo-Indian Community in State Assemblies",
  part: "Part XVI",
  fullDetails: """
Article 333: Representation for Anglo-Indian Community in State Assemblies  
The Governor of a state can appoint one person from the Anglo-Indian community to the State Assembly if they feel the community is not well-represented.
""",
),

ConstitutionArticle(
  article: "Article 334",
  description: "Time Period for Reservation",
  part: "Part XVI",
  fullDetails: """
Article 334: Time Period for Reservation  
The reservation of seats for Scheduled Castes, Scheduled Tribes, and Anglo-Indians was originally meant to last 10 years from 1950 but has been extended multiple times.
""",
),

ConstitutionArticle(
  article: "Article 335",
  description: "Claims of SCs and STs to Services and Jobs",
  part: "Part XVI",
  fullDetails: """
Article 335: Claims of SCs and STs to Services and Jobs  
Special consideration is given to Scheduled Castes and Tribes in government jobs, provided it does not harm the efficiency of the administration.
""",
),

ConstitutionArticle(
  article: "Article 336",
  description: "Special Provisions for Anglo-Indians in Certain Jobs",
  part: "Part XVI",
  fullDetails: """
Article 336: Special Provisions for Anglo-Indians in Certain Jobs  
Anglo-Indians had special assistance for jobs in railways, customs, and postal services for the first ten years after the Constitution began.
""",
),

ConstitutionArticle(
  article: "Article 337",
  description: "Educational Grants for Anglo-Indians",
  part: "Part XVI",
  fullDetails: """
Article 337: Educational Grants for Anglo-Indians  
Anglo-Indians received government assistance for running their schools and colleges, but this support was for a limited time.
""",
),

ConstitutionArticle(
  article: "Article 338",
  description: "National Commission for Scheduled Castes",
  part: "Part XVI",
  fullDetails: """
Article 338: National Commission for Scheduled Castes  
This commission was established to safeguard the rights of Scheduled Castes and to ensure the government is taking adequate measures to support them.
""",
),

ConstitutionArticle(
  article: "Article 338A",
  description: "National Commission for Scheduled Tribes",
  part: "Part XVI",
  fullDetails: """
Article 338A: National Commission for Scheduled Tribes  
A dedicated commission was established to protect the rights of Scheduled Tribes and oversee government initiatives for their welfare.
""",
),

ConstitutionArticle(
  article: "Article 339",
  description: "Control over Plans for SCs and STs",
  part: "Part XVI",
  fullDetails: """
Article 339: Control over Plans for SCs and STs  
The Union Government can advise and assist states in planning and implementing programs for Scheduled Castes and Tribes.
""",
),

ConstitutionArticle(
  article: "Article 340",
  description: "Identifying Backward Classes",
  part: "Part XVI",
  fullDetails: """
Article 340: Identifying Backward Classes  
The President can form a group to study and identify backward communities and suggest measures for their advancement.
""",
),

ConstitutionArticle(
  article: "Article 341",
  description: "Who Are Scheduled Castes?",
  part: "Part XVI",
  fullDetails: """
Article 341: Who Are Scheduled Castes?  
The President declares the Scheduled Castes for each state through a specific list. Only those on the list are considered SCs.
""",
),

ConstitutionArticle(
  article: "Article 342",
  description: "Who Are Scheduled Tribes?",
  part: "Part XVI",
  fullDetails: """
Article 342: Who Are Scheduled Tribes?  
The President declares the Scheduled Tribes for each state through a specific list. Only those on the list are considered STs.
""",
),

ConstitutionArticle(
  article: "Article 343",
  description: "Official Language of the Union",
  part: "Part XVII",
  fullDetails: """
Article 343: Official Language of the Union  
1. Main Language: Hindi in the Devanagari script is the official language of India.  
2. Numbers: The numbers used in official work will follow the international form (like in English).  
3. Using English: English will be used along with Hindi for 15 years after the Constitution began (from 1950). After that, Parliament can allow English to continue.
""",
),

ConstitutionArticle(
  article: "Article 344",
  description: "Commission and Committee on Official Language",
  part: "Part XVII",
  fullDetails: """
Article 344: Commission and Committee on Official Language  
1. Setting Up a Commission: After five years from the start of the Constitution, and then every ten years, a group of experts is created to study how languages are used in India.  
2. Purpose: This group gives advice on:  
   - How to make Hindi more common.  
   - Using other Indian languages fairly.  
   - Making sure no one feels left out because of language.
""",
),

ConstitutionArticle(
  article: "Article 345",
  description: "Official Language of a State",
  part: "Part XVII",
  fullDetails: """
Article 345: Official Language of a State  
Each state can pick its own language for government work. It can be Hindi, English, or any language spoken in the state.
""",
),

ConstitutionArticle(
  article: "Article 346",
  description: "Language for Communication Between States",
  part: "Part XVII",
  fullDetails: """
Article 346: Language for Communication Between States  
States must use Hindi or English when talking to each other or the central government.
""",
),

ConstitutionArticle(
  article: "Article 347",
  description: "Special Language for a State",
  part: "Part XVII",
  fullDetails: """
Article 347: Special Language for a State  
If many people in a state speak a different language, the President can let that language be used for official work in that state.
""",
),

ConstitutionArticle(
  article: "Article 348",
  description: "Language for Laws and Supreme Court",
  part: "Part XVII",
  fullDetails: """
Article 348: Language for Laws and Supreme Court  
1. Laws in English: All laws, rules, and court documents must be written in English.  
2. State Laws: States can write their laws in their chosen official language, but they must also provide an English version.
""",
),

ConstitutionArticle(
  article: "Article 349",
  description: "Changes to the Official Language",
  part: "Part XVII",
  fullDetails: """
Article 349: Changes to the Official Language  
If Parliament wants to make big changes to official language rules, they must first get advice from the language experts set up under Article 344.
""",
),

ConstitutionArticle(
  article: "Article 350",
  description: "Right to Submit Applications in Any Language",
  part: "Part XVII",
  fullDetails: """
Article 350: Right to Submit Applications in Any Language  
Anyone can send letters or applications to the government in any language they know.
""",
),

ConstitutionArticle(
  article: "Article 350A",
  description: "Education in Mother Tongue",
  part: "Part XVII",
  fullDetails: """
Article 350A: Education in Mother Tongue  
States must provide education in a child’s mother tongue if the language is different from the state’s main language.
""",
),

ConstitutionArticle(
  article: "Article 350B",
  description: "Linguistic Minorities Commissioner",
  part: "Part XVII",
  fullDetails: """
Article 350B: Linguistic Minorities Commissioner  
A special officer, called the Linguistic Minorities Commissioner, is appointed to protect the language rights of small groups of people.
""",
),

ConstitutionArticle(
  article: "Article 351",
  description: "Promoting Hindi",
  part: "Part XVII",
  fullDetails: """
Article 351: Promoting Hindi  
The government must work to make Hindi popular across the country while respecting all other Indian languages. Hindi should include words from Sanskrit and other Indian languages to make it easy for everyone to understand.
""",
),
ConstitutionArticle(
  article: "Article 352",
  description: "Proclamation of Emergency",
  part: "Part XVIII",
  fullDetails: """
Article 352: Proclamation of Emergency  
1. When can an emergency happen?  
   - An emergency can be declared if there is a war, a threat of war, or serious danger to the country’s security from foreign attack, armed rebellion, or other reasons.  
2. Who can declare an emergency?  
   - The President can declare an emergency based on advice from the Cabinet (group of ministers).  
3. What happens during an emergency?  
   - The central government gets special powers to manage the situation and can take control of areas normally under state governments.
""",
),

ConstitutionArticle(
  article: "Article 353",
  description: "Power to Deal with Emergency",
  part: "Part XVIII",
  fullDetails: """
Article 353: Power to Deal with Emergency  
During an emergency, the central government can take control of areas that are normally managed by the states, such as the police, public health, or transportation.
""",
),

ConstitutionArticle(
  article: "Article 354",
  description: "Application of Provisions Relating to Financial Emergency",
  part: "Part XVIII",
  fullDetails: """
Article 354: Application of Provisions Relating to Financial Emergency  
The President can make changes to how money is managed during an emergency, including controlling how central and state governments handle finances.
""",
),

ConstitutionArticle(
  article: "Article 355",
  description: "Duty of the Union to Protect States",
  part: "Part XVIII",
  fullDetails: """
Article 355: Duty of the Union to Protect States  
The central government must protect each state from dangers like armed rebellion or foreign invasion. If a state is threatened, the Union government can take action to help.
""",
),

ConstitutionArticle(
  article: "Article 356",
  description: "Proclamation of President's Rule in States",
  part: "Part XVIII",
  fullDetails: """
Article 356: Proclamation of President's Rule in States  
1. When can President's Rule be declared?  
   - If a state’s government cannot function properly, or if there is a breakdown of law and order, the President can take control of the state’s government.  
2. What happens during President's Rule?  
   - The central government runs the state, and the state's legislature (Assembly) may be suspended.  
3. How long does President's Rule last?  
   - President's Rule can last for six months, but it can be extended with Parliament's approval.
""",
),

ConstitutionArticle(
  article: "Article 357",
  description: "Exercise of Legislative Powers Under Proclamation of Emergency",
  part: "Part XVIII",
  fullDetails: """
Article 357: Exercise of Legislative Powers Under Proclamation of Emergency  
When President’s Rule is in place in a state, the President can make laws for that state, even without the state’s legislature.
""",
),

ConstitutionArticle(
  article: "Article 358",
  description: "Suspension of Provisions of Article 19 During Emergency",
  part: "Part XVIII",
  fullDetails: """
Article 358: Suspension of Provisions of Article 19 During Emergency  
1. What is Article 19?  
   - Article 19 gives people the right to move freely, speak, and assemble.  
2. How is it affected during an emergency?  
   - During an emergency, the government can temporarily stop or limit these rights, but only if it is necessary for the emergency.
""",
),

ConstitutionArticle(
  article: "Article 359",
  description: "Suspension of Fundamental Rights During Emergency",
  part: "Part XVIII",
  fullDetails: """
Article 359: Suspension of Fundamental Rights During Emergency  
1. What can happen to fundamental rights?  
   - During an emergency, the President can suspend certain fundamental rights, but only for the period of the emergency.  
2. Which rights can be suspended?  
   - Rights like freedom of speech and movement can be temporarily suspended. However, the rights against discrimination and the right to life cannot be taken away.
""",
),

ConstitutionArticle(
  article: "Article 360",
  description: "Financial Emergency",
  part: "Part XVIII",
  fullDetails: """
Article 360: Financial Emergency  
1. What is a financial emergency?  
   - If the country’s financial situation becomes critical, such as the government being unable to pay debts, the President can declare a financial emergency.  
2. What happens during a financial emergency?  
   - The President can take control of financial matters, reduce salaries of government workers, and change how money is spent.  
3. How long can a financial emergency last?  
   - A financial emergency can last as long as needed, with Parliament’s approval every two months.
""",
),
ConstitutionArticle(
  article: "Article 361",
  description: "Protection of President and Governors",
  part: "Part XIX",
  fullDetails: """
Article 361: Protection of President and Governors  
1. What does it mean for the President?  
   - The President cannot be sued or arrested for anything they do while in office.  
2. What about Governors?  
   - Similarly, Governors of states are also protected from being sued or arrested for their actions in office.
""",
),

ConstitutionArticle(
  article: "Article 362",
  description: "Provisions as to Minorities, etc.",
  part: "Part XIX",
  fullDetails: """
Article 362: Provisions as to Minorities, etc.  
The government must protect the rights of minorities, ensuring that laws and decisions treat everyone fairly, regardless of religion, language, or culture.
""",
),

ConstitutionArticle(
  article: "Article 363",
  description: "Bar to Jurisdiction of Courts",
  part: "Part XIX",
  fullDetails: """
Article 363: Bar to Jurisdiction of Courts  
Courts like the Supreme Court or High Courts cannot hear cases involving matters decided by the President or Governor under their special powers. Such decisions are final and cannot be challenged in court.
""",
),

ConstitutionArticle(
  article: "Article 364",
  description: "Power of the President to Make Laws for Union Territories",
  part: "Part XIX",
  fullDetails: """
Article 364: Power of the President to Make Laws for Union Territories  
The President has the power to make laws for Union Territories, like Delhi or Chandigarh, which apply to the people living in these areas.
""",
),

ConstitutionArticle(
  article: "Article 365",
  description: "Effect of Failure to Comply with Directions Given by the Union",
  part: "Part XIX",
  fullDetails: """
Article 365: Effect of Failure to Comply with Directions Given by the Union  
If a state does not follow the directions given by the central government (Union), it can affect the state’s financial support from the Union. The central government has the right to take necessary actions to ensure compliance.
""",
),

ConstitutionArticle(
  article: "Article 366",
  description: "Definition of Certain Terms",
  part: "Part XIX",
  fullDetails: """
Article 366: Definition of Certain Terms  
This article defines important words used in the Constitution, such as "State," "Union," and "Law." These definitions ensure clarity and consistency throughout the Constitution.
""",
),

ConstitutionArticle(
  article: "Article 367",
  description: "Interpretation of the Constitution",
  part: "Part XIX",
  fullDetails: """
Article 367: Interpretation of the Constitution  
If there is any confusion or doubt about the meaning of any part of the Constitution, the President can provide a clear explanation to resolve it.
""",
),
ConstitutionArticle(
  article: "Article 368",
  description: "Power of Parliament to Amend the Constitution and Procedure Therefor",
  part: "Part XX",
  fullDetails: """
Article 368: Power of Parliament to Amend the Constitution and Procedure Therefor  
1. Who can change the Constitution?  
   - Only Parliament (the law-making body of India) can change or amend the Constitution.  

2. How can it be changed?  
   - The process of changing the Constitution is not simple. Parliament must pass a law to make changes, and sometimes both houses of Parliament (Lok Sabha and Rajya Sabha) must agree.  

3. What kind of changes can be made?  
   - Some parts of the Constitution can be changed easily, while others require more steps. For certain changes, approval from state legislatures (state assemblies) is needed.  

4. What happens after an amendment is made?  
   - Once the amendment is passed by Parliament and, if required, by state legislatures, it becomes a part of the Constitution.
""",
),

  ConstitutionArticle(
    article: "Article 369",
    description:
        "Temporary power to Parliament to make laws with respect to certain matters in the State List as if they were matters in the Concurrent List.",
    part: "Part XXI",
    fullDetails: """
For a temporary time, Parliament could make laws on subjects usually handled by states, treating them as if they were shared between the central and state governments. This helped the central government act quickly during early years.
""",
  ),
  ConstitutionArticle(
    article: "Article 370",
    description:
        "Temporary provisions with respect to the State of Jammu and Kashmir.",
    part: "Part XXI",
    fullDetails: """
Jammu and Kashmir had special rules that allowed it to have more control over its laws, particularly in areas like education, land, and governance. These rules were temporary but lasted until 2019 when they were removed.
""",
  ),
  ConstitutionArticle(
    article: "Article 371",
    description:
        "Special provision with respect to the States of Maharashtra and Gujarat.",
    part: "Part XXI",
    fullDetails: """
When Maharashtra and Gujarat became separate states in 1960, special provisions were made to help with their adjustment, like handling language differences and economic matters.
""",
  ),
  ConstitutionArticle(
    article: "Article 371A",
    description:
        "Special provision with respect to the State of Nagaland.",
    part: "Part XXI",
    fullDetails: """
Nagaland has special rules to protect its culture and traditions. The people of Nagaland were given the right to decide some matters like land and religious practices, making sure their unique way of life was respected.
""",
  ),
  ConstitutionArticle(
    article: "Article 371B",
    description:
        "Special provision with respect to the State of Assam.",
    part: "Part XXI",
    fullDetails: """
Assam was given special provisions to protect its culture, identity, and resources, particularly for the indigenous people and local practices.
""",
  ),
  ConstitutionArticle(
    article: "Article 371C",
    description:
        "Special provision with respect to the State of Manipur.",
    part: "Part XXI",
    fullDetails: """
Manipur was given special rules to ensure its people’s language, culture, and traditions were protected and respected by the central government.
""",
  ),
  ConstitutionArticle(
    article: "Article 371D",
    description:
        "Special provisions with respect to the State of Andhra Pradesh or the State of Telangana.",
    part: "Part XXI",
    fullDetails: """
Andhra Pradesh and later Telangana were given special provisions to ensure fair development of their backward regions, particularly for water distribution, jobs, and resources.
""",
  ),
  ConstitutionArticle(
    article: "Article 371E",
    description:
        "Establishment of Central University in Andhra Pradesh.",
    part: "Part XXI",
    fullDetails: """
Andhra Pradesh was given the right to set up a central university to provide better education to its people, helping with the state's development.
""",
  ),
  ConstitutionArticle(
    article: "Article 371F",
    description:
        "Special provisions with respect to the State of Sikkim.",
    part: "Part XXI",
    fullDetails: """
Sikkim, after joining India in 1975, was given special rules to protect its culture and traditions, ensuring its people could adjust to the new system.
""",
  ),
  ConstitutionArticle(
    article: "Article 371G",
    description:
        "Special provision with respect to the State of Mizoram.",
    part: "Part XXI",
    fullDetails: """
Mizoram has special provisions to protect the rights of its people, ensuring that their culture, language, and land rights are respected.
""",
  ),
  ConstitutionArticle(
    article: "Article 371H",
    description:
        "Special provision with respect to the State of Arunachal Pradesh.",
    part: "Part XXI",
    fullDetails: """
Arunachal Pradesh has special provisions to protect the culture and rights of its tribal people. These rules help ensure their identity and way of life are respected.
""",
  ),
  ConstitutionArticle(
    article: "Article 371I",
    description:
        "Special provision with respect to the State of Goa.",
    part: "Part XXI",
    fullDetails: """
Goa has special provisions to protect its unique culture, language, and traditions. These provisions ensure that Goa’s people can maintain their identity.
""",
  ),
  ConstitutionArticle(
    article: "Article 371J",
    description:
        "Special provisions with respect to the State of Karnataka.",
    part: "Part XXI",
    fullDetails: """
Karnataka was given special rules to help develop its backward regions, ensuring that all parts of the state have equal access to resources like education and infrastructure.
""",
  ),
  ConstitutionArticle(
    article: "Article 372",
    description:
        "Continuance in force of existing laws and their adaptation.",
    part: "Part XXI",
    fullDetails: """
Laws that existed before India became independent remained in effect, but they were adjusted to fit the new Constitution of India.
""",
  ),
  ConstitutionArticle(
    article: "Article 372A",
    description:
        "Power of the President to adapt laws.",
    part: "Part XXI",
    fullDetails: """
The President had the power to modify or change old laws so that they would work with the new Constitution. This helped remove old laws that didn’t match with the new rules.
""",
  ),
  ConstitutionArticle(
    article: "Article 373",
    description:
        "Power of President to make order in respect of persons under preventive detention in certain cases.",
    part: "Part XXI",
    fullDetails: """
If someone was being held in jail without trial to prevent a crime from happening (called preventive detention), the President could make special orders about how to handle these cases.
""",
  ),
  ConstitutionArticle(
    article: "Article 374",
    description:
        "Provisions as to Judges of the Federal Court and proceedings pending in the Federal Court or before His Majesty in Council.",
    part: "Part XXI",
    fullDetails: """
This article talked about what happened to judges of the old Federal Court and cases that were still ongoing when India became a republic.
""",
  ),
  ConstitutionArticle(
    article: "Article 375",
    description:
        "Courts, authorities, and officers to continue to function subject to the provisions of the Constitution.",
    part: "Part XXI",
    fullDetails: """
All courts and government offices that existed before the Constitution continued to function. However, they now had to follow the new Constitution and its rules.
""",
  ),
  ConstitutionArticle(
    article: "Article 376",
    description: "Provisions as to Judges of High Courts.",
    part: "Part XXI",
    fullDetails: """
This article dealt with the judges of High Courts and how their positions were handled after India became a republic. It made sure the judicial system continued to function smoothly.
""",
  ),
  ConstitutionArticle(
    article: "Article 377",
    description:
        "Provisions as to Comptroller and Auditor-General of India.",
    part: "Part XXI",
    fullDetails: """
The Comptroller and Auditor-General (CAG) is responsible for checking government spending. This article made sure that the CAG continued its work after the Constitution was adopted.
""",
  ),
  ConstitutionArticle(
    article: "Article 378",
    description: "Provisions as to Public Service Commissions.",
    part: "Part XXI",
    fullDetails: """
The Public Service Commissions, which help select government workers, continued their work according to the new Constitution.
""",
  ),
  ConstitutionArticle(
    article: "Article 378A",
    description:
        "Special provision as to the duration of Andhra Pradesh Legislative Assembly.",
    part: "Part XXI",
    fullDetails: """
The article set special rules about how long the Andhra Pradesh Legislative Assembly (the law-making body of the state) would last. The duration was different from other states.
""",
  ),
  ConstitutionArticle(
    article: "Article 392",
    description:
        "Power of the President to remove difficulties.",
    part: "Part XXI",
    fullDetails: """
If any problems arose while applying the Constitution, the President could make temporary changes to remove those difficulties. This was an important provision when the Constitution was first adopted, but it was used only temporarily.
""",
  ),

  ConstitutionArticle(
    article: "Article 393",
    description: "Short title of the Constitution.",
    part: "Part XXII",
    fullDetails: """
The Constitution of India is officially called the "Constitution of India." This is the short title by which the Constitution is known.
""",
  ),
  ConstitutionArticle(
    article: "Article 394",
    description: "Commencement of the Constitution.",
    part: "Part XXII",
    fullDetails: """
The Constitution came into effect on January 26, 1950, which is also celebrated as Republic Day. From this day, all the rules and laws in the Constitution started to apply.
""",
  ),
  ConstitutionArticle(
    article: "Article 394A",
    description: "Authoritative text of the Constitution in the Hindi language.",
    part: "Part XXII",
    fullDetails: """
The official text of the Constitution was first written in English, but there is also an authoritative Hindi version. This means the Hindi translation is treated as an official and trusted version of the Constitution, alongside the English one.
""",
  ),
  ConstitutionArticle(
    article: "Article 395",
    description: "Repeal of old laws and acts.",
    part: "Part XXII",
    fullDetails: """
This article says that certain old laws and legal acts that were not part of the new Constitution were officially repealed or canceled. These old laws were no longer valid after the Constitution came into effect.
""",
  ),



];