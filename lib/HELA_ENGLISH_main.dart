import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const HelaEnglishApp());
}

const Color ink = Color(0xFF172554);
const Color blue = Color(0xFF4056C8);
const Color violet = Color(0xFF7654D6);
const Color page = Color(0xFFF3F5FF);
const Color cardColor = Color(0xFFFFFFFF);

class HelaEnglishApp extends StatelessWidget {
  const HelaEnglishApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hela English',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: page,
        colorScheme: ColorScheme.fromSeed(seedColor: blue),
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}

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
  Lesson('At the Pharmacy', 'I need some medicine.', 'මට බෙහෙත් ටිකක් අවශ්‍යයි.'),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: _hero()),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 30),
              sliver: SliverList(
                delegate: SliverChildListDelegate([
                  const Text('Start Learning', style: TextStyle(
                    color: ink, fontSize: 24, fontWeight: FontWeight.w900)),
                  const SizedBox(height: 5),
                  Text('ඔයාගේ English ගමන අදම පටන් ගන්න!',
                    style: TextStyle(color: Colors.blueGrey.shade600, fontSize: 15)),
                  const SizedBox(height: 18),
                  _FeatureCard(
                    title: 'English Lessons',
                    subtitle: 'පාඩම් 1–100 පියවරෙන් පියවර ඉගෙන ගන්න',
                    icon: Icons.menu_book_rounded,
                    color: const Color(0xFF4562D5),
                    onTap: () => _open(context, const LessonsPage()),
                  ),
                  _FeatureCard(
                    title: 'Vocabulary',
                    subtitle: 'අලුත් English වචන සහ සිංහල තේරුම්',
                    icon: Icons.auto_stories_rounded,
                    color: const Color(0xFF8556D8),
                    onTap: () => _open(context, const VocabularyPage()),
                  ),
                  _FeatureCard(
                    title: 'English Quiz',
                    subtitle: 'ඔයාගේ දැනුම පරීක්ෂා කරගන්න',
                    icon: Icons.emoji_events_rounded,
                    color: const Color(0xFFE69A32),
                    onTap: () => _open(context, const QuizPage()),
                  ),
                  _FeatureCard(
                    title: 'Speaking Practice',
                    subtitle: 'දිනපතා English කතා කිරීම පුහුණු වෙන්න',
                    icon: Icons.record_voice_over_rounded,
                    color: const Color(0xFF0C9B8B),
                    onTap: () => _open(context, const SpeakingPage()),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(22),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [ink, blue, violet],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(26),
                      boxShadow: [BoxShadow(
                        color: blue.withOpacity(.28),
                        blurRadius: 22, offset: const Offset(0, 12))],
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('🚀 Your English Journey', style: TextStyle(
                          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(height: 8),
                        Text('Practice every day. Small steps make big progress!',
                          style: TextStyle(color: Colors.white70, fontSize: 14)),
                        SizedBox(height: 10),
                        Text('දවසින් දවස ඔයාගේ ඉංග්‍රීසි දියුණු කරගමු!',
                          style: TextStyle(color: Colors.white, fontSize: 14)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  Container(
                    margin: const EdgeInsets.only(top: 22, bottom: 8),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: blue.withOpacity(.10)),
                      boxShadow: [
                        BoxShadow(
                          color: blue.withOpacity(.10),
                          blurRadius: 18,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('ABOUT THE DEVELOPER',
                          style: TextStyle(
                            color: blue,
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.2,
                          )),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              width: 58,
                              height: 58,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [blue, violet],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(19),
                                boxShadow: [
                                  BoxShadow(
                                    color: violet.withOpacity(.25),
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: const Center(
                                child: Text('MB',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w900,
                                  )),
                              ),
                            ),
                            const SizedBox(width: 14),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Madhushan Bulathsinhala',
                                    style: TextStyle(
                                      color: ink,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w900,
                                    )),
                                  SizedBox(height: 4),
                                  Text('App Developer',
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 13,
                                    )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        const Divider(height: 1),
                        const SizedBox(height: 12),
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () async {
                            await Clipboard.setData(
                              const ClipboardData(text: 'bdonmadhushan007@gmail.com'),
                            );
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Email address copied'),
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Icon(Icons.email_rounded, color: blue, size: 20),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text('bdonmadhushan007@gmail.com',
                                    style: TextStyle(
                                      color: blue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    )),
                                ),
                                Icon(Icons.copy_rounded,
                                  color: Colors.blueGrey, size: 17),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text('ඔබගේ අදහස් සහ යෝජනා අපට එවන්න.',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 13,
                          )),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Center(child: Text('HELA ENGLISH • Learn with confidence',
                    style: TextStyle(color: Colors.blueGrey))),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _hero() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 28, 24, 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF18275B), Color(0xFF4057C8), Color(0xFF7654D6)],
          begin: Alignment.topLeft, end: Alignment.bottomRight),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36)),
      ),
      child: Stack(
        children: [
          Positioned(right: -20, top: -25, child: Container(
            width: 150, height: 150,
            decoration: BoxDecoration(shape: BoxShape.circle,
              color: Colors.white.withOpacity(.07)))),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Container(
                width: 48, height: 48,
                decoration: BoxDecoration(color: Colors.white.withOpacity(.16),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white24)),
                child: const Icon(Icons.school_rounded, color: Colors.white, size: 29)),
              const SizedBox(width: 12),
              const Expanded(child: Text('HELA ENGLISH', style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w900,
                letterSpacing: 1.5))),
              Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                decoration: BoxDecoration(color: Colors.white.withOpacity(.16),
                  borderRadius: BorderRadius.circular(30)),
                child: const Text('LEARN', style: TextStyle(
                  color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold))),
            ]),
            const SizedBox(height: 30),
            const Text('ආයුබෝවන්! 🙏', style: TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w900)),
            const SizedBox(height: 8),
            const Text('අද ඉඳන් English ඉගෙන ගමු!',
              style: TextStyle(color: Colors.white70, fontSize: 18)),
            const SizedBox(height: 25),
            Row(children: [
              Expanded(child: _heroStat(Icons.menu_book_rounded, '100', 'Lessons')),
              const SizedBox(width: 12),
              Expanded(child: _heroStat(Icons.translate_rounded, 'Sinhala', 'Support')),
            ]),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.13),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: Colors.white24)),
              child: const Row(children: [
                Text('✨', style: TextStyle(fontSize: 27)),
                SizedBox(width: 12),
                Expanded(child: Text('Learn English step by step.\nඔයාට පුළුවන්!',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600))),
                Icon(Icons.arrow_forward_rounded, color: Colors.white),
              ]),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _heroStat(IconData icon, String value, String label) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(color: Colors.white.withOpacity(.13),
        borderRadius: BorderRadius.circular(16)),
      child: Row(children: [
        Icon(icon, color: Colors.white, size: 25),
        const SizedBox(width: 9),
        Flexible(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value, style: const TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold, fontSize: 16)),
            Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12)),
          ])),
      ]),
    );
  }

  void _open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }
}

class _FeatureCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  const _FeatureCard({required this.title, required this.subtitle,
    required this.icon, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(23),
        boxShadow: [
          BoxShadow(color: color.withOpacity(.13), blurRadius: 18,
            offset: const Offset(0, 9)),
          const BoxShadow(color: Colors.white, blurRadius: 2,
            offset: Offset(-2, -2)),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(23),
        child: InkWell(
          borderRadius: BorderRadius.circular(23),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            child: Row(children: [
              Container(width: 58, height: 58,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [color, color.withOpacity(.72)]),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [BoxShadow(color: color.withOpacity(.25),
                    blurRadius: 10, offset: const Offset(0, 5))]),
                child: Icon(icon, color: Colors.white, size: 29)),
              const SizedBox(width: 16),
              Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 18,
                    color: ink, fontWeight: FontWeight.w800)),
                  const SizedBox(height: 5),
                  Text(subtitle, style: TextStyle(fontSize: 13,
                    color: Colors.blueGrey.shade700)),
                ])),
              Icon(Icons.arrow_forward_ios_rounded, color: color, size: 21),
            ]),
          ),
        ),
      ),
    );
  }
}

class LessonsPage extends StatefulWidget {
  const LessonsPage({super.key});
  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  String search = '';

  @override
  Widget build(BuildContext context) {
    final shown = lessons.asMap().entries.where((entry) {
      return entry.value.title.toLowerCase().contains(search.toLowerCase()) ||
          entry.value.english.toLowerCase().contains(search.toLowerCase());
    }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('English Lessons'),
        backgroundColor: page, foregroundColor: ink),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 8, 18, 12),
          child: TextField(
            onChanged: (value) => setState(() => search = value),
            decoration: InputDecoration(
              hintText: 'Search lessons...',
              prefixIcon: const Icon(Icons.search),
              filled: true, fillColor: Colors.white,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide.none),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          child: Row(children: [
            const Expanded(child: Text('📚 English පාඩම් 1–100',
              style: TextStyle(fontSize: 20, color: ink, fontWeight: FontWeight.w900))),
            Text('${shown.length} lessons', style: const TextStyle(color: Colors.blueGrey)),
          ]),
        ),
        Expanded(child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(18, 5, 18, 22),
          itemCount: shown.length,
          itemBuilder: (context, index) {
            final item = shown[index];
            final lessonNumber = item.key + 1;
            return Container(
              margin: const EdgeInsets.only(bottom: 13),
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: blue.withOpacity(.10),
                  blurRadius: 13, offset: const Offset(0, 6))]),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
                leading: CircleAvatar(radius: 25, backgroundColor: blue,
                  child: Text('$lessonNumber', style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold))),
                title: Text('Lesson $lessonNumber',
                  style: const TextStyle(color: blue, fontWeight: FontWeight.w900)),
                subtitle: Padding(padding: const EdgeInsets.only(top: 5),
                  child: Text(item.value.title, style: const TextStyle(fontSize: 14))),
                trailing: const Icon(Icons.chevron_right_rounded, color: blue, size: 30),
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (_) => LessonDetailPage(index: item.key))),
              ),
            );
          },
        )),
      ]),
    );
  }
}

class LessonDetailPage extends StatelessWidget {
  final int index;
  const LessonDetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final lesson = lessons[index];
    return Scaffold(
      appBar: AppBar(title: Text('Lesson ${index + 1}'),
        backgroundColor: page, foregroundColor: ink),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const SizedBox(height: 12),
          Text(lesson.title, textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 23, color: ink, fontWeight: FontWeight.w900)),
          const SizedBox(height: 28),
          _learningPanel('🇬🇧 English', lesson.english, blue),
          const SizedBox(height: 18),
          _learningPanel('🇱🇰 සිංහල තේරුම', lesson.sinhala, violet),
          const Spacer(),
          Row(children: [
            Expanded(child: OutlinedButton.icon(
              onPressed: index == 0 ? null : () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => LessonDetailPage(index: index - 1))),
              icon: const Icon(Icons.arrow_back), label: const Text('Previous'))),
            const SizedBox(width: 12),
            Expanded(child: ElevatedButton.icon(
              onPressed: index == lessons.length - 1 ? null : () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => LessonDetailPage(index: index + 1))),
              icon: const Icon(Icons.arrow_forward), label: const Text('Next'),
              style: ElevatedButton.styleFrom(backgroundColor: blue, foregroundColor: Colors.white))),
          ]),
        ]),
      ),
    );
  }

  Widget _learningPanel(String heading, String text, Color color) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(22),
        boxShadow: [BoxShadow(color: color.withOpacity(.15),
          blurRadius: 16, offset: const Offset(0, 7))],
        border: Border.all(color: color.withOpacity(.12)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(heading, style: TextStyle(color: color, fontWeight: FontWeight.w900, fontSize: 16)),
        const SizedBox(height: 14),
        Text(text, style: const TextStyle(fontSize: 23, color: ink, fontWeight: FontWeight.w700)),
      ]),
    );
  }
}

class VocabularyPage extends StatelessWidget {
  const VocabularyPage({super.key});
  static const words = <List<String>>[
    ['Apple', 'ඇපල් ගෙඩිය'], ['Book', 'පොත'], ['Beautiful', 'ලස්සන'],
    ['Brave', 'නිර්භීත'], ['Careful', 'ප්‍රවේශම් සහිත'], ['Clean', 'පිරිසිදු'],
    ['Come', 'එන්න'], ['Drink', 'බොන්න'], ['Eat', 'කන්න'],
    ['Family', 'පවුල'], ['Friend', 'මිතුරා'], ['Happy', 'සතුටු'],
    ['House', 'නිවස'], ['Learn', 'ඉගෙන ගන්න'], ['Listen', 'සවන් දෙන්න'],
    ['Love', 'ආදරය'], ['Market', 'වෙළඳපොළ'], ['Morning', 'උදෑසන'],
    ['Need', 'අවශ්‍යයි'], ['Open', 'විවෘත කරන්න'], ['Please', 'කරුණාකර'],
    ['Quickly', 'ඉක්මනින්'], ['Read', 'කියවන්න'], ['School', 'පාසල'],
    ['Speak', 'කතා කරන්න'], ['Thank you', 'ස්තුතියි'], ['Understand', 'තේරුම් ගන්න'],
    ['Water', 'වතුර'], ['Work', 'වැඩ'], ['Yesterday', 'ඊයේ'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vocabulary'), backgroundColor: page, foregroundColor: ink),
      body: ListView.separated(
        padding: const EdgeInsets.all(18), itemCount: words.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(17),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17),
            boxShadow: [BoxShadow(color: blue.withOpacity(.08), blurRadius: 10, offset: const Offset(0, 4))]),
          child: Row(children: [
            CircleAvatar(backgroundColor: blue.withOpacity(.12),
              child: Text('${index + 1}', style: const TextStyle(color: blue, fontWeight: FontWeight.bold))),
            const SizedBox(width: 14),
            Expanded(child: Text(words[index][0], style: const TextStyle(
              color: ink, fontSize: 17, fontWeight: FontWeight.bold))),
            Text(words[index][1], style: const TextStyle(fontSize: 15)),
          ]),
        ),
      ),
    );
  }
}

class QuizQuestion {
  final String question;
  final List<String> options;
  final int answer;
  const QuizQuestion(this.question, this.options, this.answer);
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  static const questions = <QuizQuestion>[
    QuizQuestion('“ආයුබෝවන්” සඳහා සුදුසු English වචනය කුමක්ද?',
      ['Goodbye', 'Hello', 'Sorry', 'Please'], 1),
    QuizQuestion('“Thank you” යන්නෙහි සිංහල තේරුම?',
      ['සමාවෙන්න', 'සුබ රාත්‍රියක්', 'ස්තුතියි', 'ආයුබෝවන්'], 2),
    QuizQuestion('“පොත” යන්නට English වචනය?',
      ['Book', 'Pen', 'Chair', 'Door'], 0),
    QuizQuestion('නිවැරදි වාක්‍යය තෝරන්න.',
      ['I is happy.', 'I am happy.', 'I are happy.', 'I be happy.'], 1),
    QuizQuestion('“මම වතුර බොනවා” යන්නෙහි English?',
      ['I eat water.', 'I drink water.', 'I see water.', 'I make water.'], 1),
  ];

  int current = 0;
  int score = 0;
  int? selected;
  bool finished = false;

  void choose(int value) {
    if (selected != null) return;
    setState(() {
      selected = value;
      if (value == questions[current].answer) score++;
    });
  }

  void next() {
    if (current == questions.length - 1) {
      setState(() => finished = true);
    } else {
      setState(() { current++; selected = null; });
    }
  }

  void restart() {
    setState(() { current = 0; score = 0; selected = null; finished = false; });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('English Quiz'), backgroundColor: page, foregroundColor: ink),
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: finished ? Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Icon(Icons.emoji_events_rounded, size: 76, color: Color(0xFFE6A12D)),
          const SizedBox(height: 15),
          const Text('Quiz Completed!', style: TextStyle(fontSize: 26, color: ink, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          Text('ඔයාගේ ලකුණු: $score / ${questions.length}',
            style: const TextStyle(fontSize: 21, color: blue, fontWeight: FontWeight.bold)),
          const SizedBox(height: 25),
          ElevatedButton.icon(onPressed: restart, icon: const Icon(Icons.refresh),
            label: const Text('Try Again'),
            style: ElevatedButton.styleFrom(backgroundColor: blue, foregroundColor: Colors.white)),
        ])) : Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          LinearProgressIndicator(value: (current + 1) / questions.length,
            minHeight: 8, borderRadius: BorderRadius.circular(10), color: blue),
          const SizedBox(height: 18),
          Text('Question ${current + 1} of ${questions.length}',
            style: const TextStyle(color: blue, fontWeight: FontWeight.bold)),
          const SizedBox(height: 18),
          Text(questions[current].question,
            style: const TextStyle(color: ink, fontSize: 22, fontWeight: FontWeight.w800)),
          const SizedBox(height: 22),
          ...List.generate(questions[current].options.length, (i) {
            final isAnswer = i == questions[current].answer;
            final isSelected = selected == i;
            Color border = Colors.white;
            if (selected != null && isAnswer) border = Colors.green;
            if (isSelected && !isAnswer) border = Colors.red;
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16),
                border: Border.all(color: border, width: 2),
                boxShadow: [BoxShadow(color: blue.withOpacity(.07), blurRadius: 8, offset: const Offset(0, 4))]),
              child: ListTile(
                title: Text(questions[current].options[i], style: const TextStyle(fontWeight: FontWeight.w600)),
                trailing: selected == null ? null : Icon(isAnswer ? Icons.check_circle : (isSelected ? Icons.cancel : Icons.circle_outlined),
                  color: isAnswer ? Colors.green : Colors.red),
                onTap: () => choose(i),
              ),
            );
          }),
          const Spacer(),
          if (selected != null)
            ElevatedButton(onPressed: next,
              style: ElevatedButton.styleFrom(backgroundColor: blue, foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 15)),
              child: Text(current == questions.length - 1 ? 'Show Result' : 'Next Question')),
        ]),
      ),
    );
  }
}

class SpeakingPage extends StatelessWidget {
  const SpeakingPage({super.key});
  static const phrases = <List<String>>[
    ['Hello! How are you?', 'හෙලෝ! ඔයාට කොහොමද?'],
    ['My name is Kasun.', 'මගේ නම කසුන්.'],
    ['I am learning English.', 'මම ඉංග්‍රීසි ඉගෙන ගන්නවා.'],
    ['Could you help me, please?', 'කරුණාකර මට උදව් කරන්න පුළුවන්ද?'],
    ['I would like a cup of tea.', 'මට තේ කෝප්පයක් අවශ්‍යයි.'],
    ['Where is the bus stop?', 'බස් නැවතුම කොහෙද?'],
    ['I do not understand.', 'මට තේරෙන්නේ නැහැ.'],
    ['Please speak slowly.', 'කරුණාකර හෙමින් කතා කරන්න.'],
    ['See you tomorrow!', 'හෙට හමුවෙමු!'],
    ['Have a nice day!', 'සුබ දවසක් වේවා!'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Speaking Practice'), backgroundColor: page, foregroundColor: ink),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Container(padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(gradient: const LinearGradient(colors: [ink, blue, violet]),
              borderRadius: BorderRadius.circular(22)),
            child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Icon(Icons.record_voice_over_rounded, color: Colors.white, size: 36),
              SizedBox(height: 12),
              Text('Speak English every day!', style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
              SizedBox(height: 6),
              Text('වාක්‍යය කියවලා ශබ්ද නගා පුහුණු වෙන්න.',
                style: TextStyle(color: Colors.white70)),
            ]),
          ),
          const SizedBox(height: 18),
          ...phrases.map((phrase) => Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(17),
              boxShadow: [BoxShadow(color: blue.withOpacity(.08), blurRadius: 9, offset: const Offset(0, 4))]),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(phrase[0], style: const TextStyle(color: ink, fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text(phrase[1], style: const TextStyle(color: Colors.blueGrey, fontSize: 15)),
            ]),
          )),
        ],
      ),
    );
  }
}
