
import 'package:flutter/material.dart';

void main() {
  runApp(const HelaBasaApp());
}

const Color navy = Color(0xFF172554);
const Color blue = Color(0xFF4057D6);
const Color purple = Color(0xFF7652D6);
const Color pageBg = Color(0xFFF3F5FF);

class HelaBasaApp extends StatelessWidget {
  const HelaBasaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hela Basa English Master',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: pageBg,
        colorScheme: ColorScheme.fromSeed(seedColor: blue),
      ),
      home: const HomePage(),
    );
  }
}

// LESSON DATA

class Lesson {
  final String title;
  final String english;
  final String sinhala;

  const Lesson(this.title, this.english, this.sinhala);
}

const List<Lesson> lessons = [
  Lesson('Greetings - ආචාර කිරීම', 'Hello! How are you?', 'හෙලෝ! ඔයාට කොහොමද?'),
  Lesson('Introducing Yourself - තමන්ව හඳුන්වා දීම', 'My name is Kasun.', 'මගේ නම කසුන්.'),
  Lesson('About Yourself - තමන් ගැන', 'I am from Sri Lanka.', 'මම ශ්‍රී ලංකාවේ කෙනෙක්.'),
  Lesson('Good Morning - සුබ උදෑසනක්', 'Good morning!', 'සුබ උදෑසනක්!'),
  Lesson('Good Night - සුබ රාත්‍රියක්', 'Good night!', 'සුබ රාත්‍රියක්!'),
  Lesson('Thank You - ස්තුති කිරීම', 'Thank you very much.', 'ඔයාට ගොඩක් ස්තුතියි.'),
  Lesson('Sorry - සමාව ඉල්ලීම', 'I am sorry.', 'මට සමාවෙන්න.'),
  Lesson('Asking Names - නම් විමසීම', 'What is your name?', 'ඔයාගේ නම මොකක්ද?'),
  Lesson('Age - වයස', 'How old are you?', 'ඔයාගේ වයස කීයද?'),
  Lesson('Family - පවුල', 'This is my family.', 'මේ මගේ පවුල.'),
  Lesson('Father - තාත්තා', 'My father is kind.', 'මගේ තාත්තා කරුණාවන්තයි.'),
  Lesson('Mother - අම්මා', 'My mother is beautiful.', 'මගේ අම්මා ලස්සනයි.'),
  Lesson('Brothers and Sisters', 'I have one brother.', 'මට සහෝදරයෙක් ඉන්නවා.'),
  Lesson('Friends - මිතුරන්', 'He is my best friend.', 'ඔහු මගේ හොඳම මිතුරා.'),
  Lesson('School - පාසල', 'I go to school.', 'මම පාසල් යනවා.'),
  Lesson('Classroom - පන්ති කාමරය', 'This is my classroom.', 'මේ මගේ පන්ති කාමරය.'),
  Lesson('Teachers - ගුරුවරු', 'My teacher is helpful.', 'මගේ ගුරුවරයා උදව් කරනවා.'),
  Lesson('Books - පොත්', 'I read a book.', 'මම පොතක් කියවනවා.'),
  Lesson('Numbers - ඉලක්කම්', 'I have two pens.', 'මට පෑන් දෙකක් තියෙනවා.'),
  Lesson('Days - දවස්', 'Today is Monday.', 'අද සඳුදා.'),
  Lesson('Months - මාස', 'My birthday is in June.', 'මගේ උපන් දිනය ජුනි මාසයේ.'),
  Lesson('Time - වේලාව', 'What time is it?', 'දැන් වෙලාව කීයද?'),
  Lesson('Daily Routine - දෛනික වැඩ', 'I wake up early.', 'මම උදේම අවදි වෙනවා.'),
  Lesson('Morning Activities', 'I brush my teeth.', 'මම දත් මදිනවා.'),
  Lesson('Food - ආහාර', 'I like rice and curry.', 'මම බත් සහ ව්‍යංජනවලට කැමතියි.'),
  Lesson('Drinks - බීම', 'I drink water.', 'මම වතුර බොනවා.'),
  Lesson('Fruits - පලතුරු', 'Mango is my favourite fruit.', 'අඹ මගේ ප්‍රියතම පලතුරයි.'),
  Lesson('Vegetables - එළවළු', 'Carrots are healthy.', 'කැරට් සෞඛ්‍යයට හිතකරයි.'),
  Lesson('Restaurant - අවන්හල', 'Can I see the menu?', 'මට කෑම ලැයිස්තුව බලන්න පුළුවන්ද?'),
  Lesson('Shopping - සාප්පු යාම', 'How much is this?', 'මේක කීයද?'),
  Lesson('Money - මුදල්', 'I need some money.', 'මට මුදල් ටිකක් අවශ්‍යයි.'),
  Lesson('Clothes - ඇඳුම්', 'This shirt is nice.', 'මේ කමිසය ලස්සනයි.'),
  Lesson('Colours - වර්ණ', 'My favourite colour is blue.', 'මගේ ප්‍රියතම වර්ණය නිල්.'),
  Lesson('House - නිවස', 'My house is small.', 'මගේ ගෙදර පොඩියි.'),
  Lesson('Rooms - කාමර', 'My bedroom is clean.', 'මගේ නිදන කාමරය පිරිසිදුයි.'),
  Lesson('Furniture - ගෘහ භාණ්ඩ', 'The chair is comfortable.', 'පුටුව සුවපහසුයි.'),
  Lesson('Weather - කාලගුණය', 'It is raining today.', 'අද වැස්ස වැටෙනවා.'),
  Lesson('Seasons - ඍතු', 'I like the rainy season.', 'මම වැසි කාලයට කැමතියි.'),
  Lesson('Animals - සතුන්', 'The dog is friendly.', 'බල්ලා මිත්‍රශීලීයි.'),
  Lesson('Pets - සුරතල් සතුන්', 'I have a pet cat.', 'මට සුරතල් පූසෙක් ඉන්නවා.'),
  Lesson('Body Parts - ශරීර කොටස්', 'My hands are clean.', 'මගේ අත් පිරිසිදුයි.'),
  Lesson('Health - සෞඛ්‍යය', 'I am feeling better.', 'මට දැන් හොඳයි වගේ.'),
  Lesson('Hospital - රෝහල', 'I need a doctor.', 'මට වෛද්‍යවරයෙක් අවශ්‍යයි.'),
  Lesson('Feelings - හැඟීම්', 'I am very happy.', 'මම ගොඩක් සතුටින් ඉන්නේ.'),
  Lesson('Hobbies - විනෝදාංශ', 'I like listening to music.', 'මම සංගීතය අහන්න කැමතියි.'),
  Lesson('Sports - ක්‍රීඩා', 'I play cricket.', 'මම ක්‍රිකට් ක්‍රීඩා කරනවා.'),
  Lesson('Travel - සංචාරය', 'I love travelling.', 'මම සංචාරය කරන්න කැමතියි.'),
  Lesson('Bus - බස් රථය', 'Where is the bus stop?', 'බස් නැවතුම කොහෙද?'),
  Lesson('Train - දුම්රිය', 'When does the train arrive?', 'දුම්රිය එන්නේ කීයටද?'),
  Lesson('Directions - මාර්ගය', 'How can I get there?', 'මට එතැනට යන්න පුළුවන් කොහොමද?'),
  Lesson('Places - ස්ථාන', 'Where is the bank?', 'බැංකුව කොහෙද?'),
  Lesson('Work - රැකියාව', 'I go to work every day.', 'මම හැමදාම වැඩට යනවා.'),
  Lesson('Office - කාර්යාලය', 'I work in an office.', 'මම කාර්යාලයක වැඩ කරනවා.'),
  Lesson('Telephone - දුරකථනය', 'Can I call you?', 'මට ඔයාට කතා කරන්න පුළුවන්ද?'),
  Lesson('Messages - පණිවිඩ', 'Please send me a message.', 'කරුණාකර මට පණිවිඩයක් එවන්න.'),
  Lesson('Internet - අන්තර්ජාලය', 'I use the internet every day.', 'මම හැමදාම අන්තර්ජාලය භාවිත කරනවා.'),
  Lesson('Computer - පරිගණකය', 'I use a computer.', 'මම පරිගණකයක් භාවිත කරනවා.'),
  Lesson('Questions - ප්‍රශ්න', 'Can you help me?', 'ඔයාට මට උදව් කරන්න පුළුවන්ද?'),
  Lesson('Answers - පිළිතුරු', 'Yes, of course.', 'ඔව්, අනිවාර්යයෙන්ම.'),
  Lesson('Yes and No', 'No, I do not know.', 'නැහැ, මම දන්නේ නැහැ.'),
  Lesson('Requests - ඉල්ලීම්', 'Please help me.', 'කරුණාකර මට උදව් කරන්න.'),
  Lesson('Permission - අවසර', 'May I come in?', 'මට ඇතුළට එන්න අවසරද?'),
  Lesson('Ability - හැකියාව', 'I can speak English.', 'මට ඉංග්‍රීසි කතා කරන්න පුළුවන්.'),
  Lesson('Likes - කැමැත්ත', 'I like English.', 'මම ඉංග්‍රීසිවලට කැමතියි.'),
  Lesson('Dislikes - අකමැත්ත', 'I do not like noise.', 'මම ශබ්දයට කැමති නැහැ.'),
  Lesson('Present Tense', 'I eat rice every day.', 'මම හැමදාම බත් කනවා.'),
  Lesson('Past Tense', 'I went to school yesterday.', 'මම ඊයේ පාසල් ගියා.'),
  Lesson('Future Tense', 'I will call you tomorrow.', 'මම හෙට ඔයාට කතා කරන්නම්.'),
  Lesson('Present Continuous', 'I am learning English.', 'මම ඉංග්‍රීසි ඉගෙන ගනිමින් ඉන්නවා.'),
  Lesson('Past Continuous', 'I was watching TV.', 'මම රූපවාහිනිය නරඹමින් සිටියා.'),
  Lesson('Future Plans', 'I am going to travel.', 'මම සංචාරය කරන්න යන්න ඉන්නේ.'),
  Lesson('There is / There are', 'There is a book on the table.', 'මේසය උඩ පොතක් තියෙනවා.'),
  Lesson('Have and Has', 'She has a beautiful bag.', 'ඇයට ලස්සන බෑගයක් තියෙනවා.'),
  Lesson('Is, Am and Are', 'They are my friends.', 'ඔවුන් මගේ මිතුරන්.'),
  Lesson('Can and Cannot', 'I cannot swim.', 'මට පිහිනන්න බැහැ.'),
  Lesson('Should and Should Not', 'You should study every day.', 'ඔයා හැමදාම පාඩම් කළ යුතුයි.'),
  Lesson('Must and Must Not', 'You must wear a helmet.', 'ඔයා අනිවාර්යයෙන්ම හිස්වැසුමක් පැළඳිය යුතුයි.'),
  Lesson('Prepositions', 'The cat is under the table.', 'පූසා මේසය යට ඉන්නවා.'),
  Lesson('Adjectives', 'This is a beautiful flower.', 'මේ ලස්සන මලක්.'),
  Lesson('Adverbs', 'She speaks slowly.', 'ඇය සෙමින් කතා කරනවා.'),
  Lesson('Comparisons', 'My bag is bigger than yours.', 'මගේ බෑගය ඔයාගේ එකට වඩා ලොකුයි.'),
  Lesson('Polite English', 'Could you please help me?', 'කරුණාකර මට උදව් කරන්න පුළුවන්ද?'),
  Lesson('Invitations', 'Would you like to join us?', 'ඔයා අපිත් එක්ක එකතු වෙන්න කැමතිද?'),
  Lesson('Appointments', 'Can we meet tomorrow?', 'අපිට හෙට හමුවෙන්න පුළුවන්ද?'),
  Lesson('Hotel', 'I have a reservation.', 'මම කලින් කාමරයක් වෙන් කරගෙන තියෙනවා.'),
  Lesson('Airport', 'Where is the departure gate?', 'පිටත්වීමේ දොරටුව කොහෙද?'),
  Lesson('Emergencies', 'Please call the police.', 'කරුණාකර පොලිසියට කතා කරන්න.'),
  Lesson('Safety', 'Be careful on the road.', 'පාරේදී ප්‍රවේශම් වෙන්න.'),
  Lesson('Environment', 'We must protect nature.', 'අපි ස්වභාවධර්මය ආරක්ෂා කළ යුතුයි.'),
  Lesson('Technology', 'Technology makes life easier.', 'තාක්ෂණය ජීවිතය පහසු කරනවා.'),
  Lesson('Education', 'Education is important.', 'අධ්‍යාපනය වැදගත්.'),
  Lesson('Goals', 'I want to improve my English.', 'මට මගේ ඉංග්‍රීසි දියුණු කරගන්න ඕන.'),
  Lesson('Confidence', 'Believe in yourself.', 'ඔයා ගැන විශ්වාස කරන්න.'),
  Lesson('Motivation', 'Never give up.', 'කවදාවත් උත්සාහය අත්හරින්න එපා.'),
  Lesson('Daily Conversation', 'What are you doing?', 'ඔයා මොකද කරන්නේ?'),
  Lesson('Market', 'I want one kilo of bananas.', 'මට කෙසෙල් කිලෝ එකක් ඕන.'),
  Lesson('Bank', 'I want to open an account.', 'මට ගිණුමක් ආරම්භ කරන්න ඕන.'),
  Lesson('Making Plans', 'Let us go together.', 'අපි එකට යමු.'),
  Lesson('Review', 'Practice makes you better.', 'පුහුණුවෙන් ඔයා තවත් දක්ෂ වෙනවා.'),
];

// HOME PAGE

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _hero(context),
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 24, 18, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Start Learning',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: navy,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'ඔයාගේ English ගමන අදම පටන් ගන්න!',
                      style: TextStyle(
                        color: Colors.blueGrey.shade600,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _menuCard(
                      context,
                      'English Lessons',
                      'පාඩම් 1–100 ඉගෙන ගන්න',
                      Icons.menu_book_rounded,
                      const Color(0xFF4361EE),
                      const LessonsPage(),
                    ),
                    _menuCard(
                      context,
                      'Vocabulary',
                      'අලුත් English වචන ඉගෙන ගන්න',
                      Icons.auto_stories_rounded,
                      const Color(0xFF8B5CF6),
                      const VocabularyPage(),
                    ),
                    _menuCard(
                      context,
                      'English Quiz',
                      'ඔයාගේ දැනුම පරීක්ෂා කරන්න',
                      Icons.emoji_events_rounded,
                      const Color(0xFFEA9B32),
                      const QuizPage(),
                    ),
                    _menuCard(
                      context,
                      'Speaking Practice',
                      'English කතා කිරීම පුහුණු වෙන්න',
                      Icons.record_voice_over_rounded,
                      const Color(0xFF0E9F91),
                      const SpeakingPage(),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [navy, blue, purple],
                        ),
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: blue.withOpacity(.25),
                            blurRadius: 15,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '🌟 Your English Journey',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Practice every day. Learn something new every day!',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        'Hela Basa English Master • Learn with confidence',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hero(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 35),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [navy, Color(0xFF344AC0), purple],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(38),
          bottomRight: Radius.circular(38),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -35,
            top: -45,
            child: Container(
              width: 155,
              height: 155,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(.07),
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: -50,
            child: Container(
              width: 105,
              height: 105,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(.07),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.school_rounded,
                    color: Colors.white,
                    size: 31,
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      'HELA BASA',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.16),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'LEARN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              const Text(
                'ආයුබෝවන්! 🙏',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'අද ඉඳන් English ඉගෙන ගමු!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  Expanded(
                    child: _statBox(
                      Icons.menu_book_rounded,
                      '100',
                      'Lessons',
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _statBox(
                      Icons.translate_rounded,
                      'Sinhala',
                      'Support',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.13),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: Colors.white.withOpacity(.18),
                  ),
                ),
                child: const Row(
                  children: [
                    Text('🚀', style: TextStyle(fontSize: 29)),
                    SizedBox(width: 13),
                    Expanded(
                      child: Text(
                        'Learn English step by step.\nඔයාට පුළුවන්!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _statBox(IconData icon, String value, String label) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 25),
          const SizedBox(width: 9),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
                Text(
                  label,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuCard(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    Color color,
    Widget page,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(.13),
            blu
