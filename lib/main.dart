
import 'package:flutter/material.dart';

void main() {
  runApp(const HelaBasaApp());
}

class HelaBasaApp extends StatelessWidget {
  const HelaBasaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hela Basa English Master',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
      ),
      home: const LessonsPage(),
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
  Lesson('Brothers and Sisters - සහෝදර සහෝදරියන්', 'I have one brother.', 'මට සහෝදරයෙක් ඉන්නවා.'),
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
  Lesson('Morning Activities - උදෑසන වැඩ', 'I brush my teeth.', 'මම දත් මදිනවා.'),
  Lesson('Food - ආහාර', 'I like rice and curry.', 'මම බත් සහ ව්‍යංජනවලට කැමතියි.'),
  Lesson('Drinks - බීම වර්ග', 'I drink water.', 'මම වතුර බොනවා.'),
  Lesson('Fruits - පලතුරු', 'Mango is my favourite fruit.', 'අඹ මගේ ප්‍රියතම පලතුරයි.'),
  Lesson('Vegetables - එළවළු', 'Carrots are healthy.', 'කැරට් සෞඛ්‍යයට හිතකරයි.'),
  Lesson('At the Restaurant - අවන්හලේදී', 'Can I see the menu?', 'මට කෑම ලැයිස්තුව බලන්න පුළුවන්ද?'),
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
  Lesson('At the Hospital - රෝහලේදී', 'I need a doctor.', 'මට වෛද්‍යවරයෙක් අවශ්‍යයි.'),
  Lesson('Feelings - හැඟීම්', 'I am very happy.', 'මම ගොඩක් සතුටින් ඉන්නේ.'),
  Lesson('Hobbies - විනෝදාංශ', 'I like listening to music.', 'මම සංගීතය අහන්න කැමතියි.'),
  Lesson('Sports - ක්‍රීඩා', 'I play cricket.', 'මම ක්‍රිකට් ක්‍රීඩා කරනවා.'),
  Lesson('Travel - සංචාරය', 'I love travelling.', 'මම සංචාරය කරන්න කැමතියි.'),
  Lesson('Bus - බස් රථය', 'Where is the bus stop?', 'බස් නැවතුම කොහෙද?'),
  Lesson('Train - දුම්රිය', 'When does the train arrive?', 'දුම්රිය එන්නේ කීයටද?'),
  Lesson('Directions - මාර්ගය විමසීම', 'How can I get there?', 'මට එතැනට යන්න පුළුවන් කොහොමද?'),
  Lesson('Places - ස්ථාන', 'Where is the bank?', 'බැංකුව කොහෙද?'),
  Lesson('Work - රැකියාව', 'I go to work every day.', 'මම හැමදාම වැඩට යනවා.'),
  Lesson('Office - කාර්යාලය', 'I work in an office.', 'මම කාර්යාලයක වැඩ කරනවා.'),
  Lesson('Telephone - දුරකථනය', 'Can I call you?', 'මට ඔයාට කතා කරන්න පුළුවන්ද?'),
  Lesson('Messages - පණිවිඩ', 'Please send me a message.', 'කරුණාකර මට පණිවිඩයක් එවන්න.'),
  Lesson('Internet - අන්තර්ජාලය', 'I use the internet every day.', 'මම හැමදාම අන්තර්ජාලය භාවිත කරනවා.'),
  Lesson('Computer - පරිගණකය', 'I use a computer.', 'මම පරිගණකයක් භාවිත කරනවා.'),
  Lesson('Questions - ප්‍රශ්න', 'Can you help me?', 'ඔයාට මට උදව් කරන්න පුළුවන්ද?'),
  Lesson('Answers - පිළිතුරු', 'Yes, of course.', 'ඔව්, අනිවාර්යයෙන්ම.'),
  Lesson('Yes and No - ඔව් සහ නැහැ', 'No, I do not know.', 'නැහැ, මම දන්නේ නැහැ.'),
  Lesson('Requests - ඉල්ලීම්', 'Please help me.', 'කරුණාකර මට උදව් කරන්න.'),
  Lesson('Permission - අවසර ඉල්ලීම', 'May I come in?', 'මට ඇතුළට එන්න අවසරද?'),
  Lesson('Ability - හැකියාව', 'I can speak English.', 'මට ඉංග්‍රීසි කතා කරන්න පුළුවන්.'),
  Lesson('Likes - කැමැත්ත', 'I like English.', 'මම ඉංග්‍රීසිවලට කැමතියි.'),
  Lesson('Dislikes - අකමැත්ත', 'I do not like noise.', 'මම ශබ්දයට කැමති නැහැ.'),
  Lesson('Present Tense - වර්තමාන කාලය', 'I eat rice every day.', 'මම හැමදාම බත් කනවා.'),
  Lesson('Past Tense - අතීත කාලය', 'I went to school yesterday.', 'මම ඊයේ පාසල් ගියා.'),
  Lesson('Future Tense - අනාගත කාලය', 'I will call you tomorrow.', 'මම හෙට ඔයාට කතා කරන්නම්.'),
  Lesson('Present Continuous - සිදුවෙමින් පවතින දේ', 'I am learning English.', 'මම ඉංග්‍රීසි ඉගෙන ගනිමින් ඉන්නවා.'),
  Lesson('Past Continuous - අතීතයේ සිදුවෙමින් පැවති දේ', 'I was watching TV.', 'මම රූපවාහිනිය නරඹමින් සිටියා.'),
  Lesson('Future Plans - අනාගත සැලසුම්', 'I am going to travel.', 'මම සංචාරය කරන්න යන්න ඉන්නේ.'),
  Lesson('There is / There are', 'There is a book on the table.', 'මේසය උඩ පොතක් තියෙනවා.'),
  Lesson('Have and Has', 'She has a beautiful bag.', 'ඇයට ලස්සන බෑගයක් තියෙනවා.'),
  Lesson('Is, Am and Are', 'They are my friends.', 'ඔවුන් මගේ මිතුරන්.'),
  Lesson('Can and Cannot', 'I cannot swim.', 'මට පිහිනන්න බැහැ.'),
  Lesson('Should and Should Not', 'You should study every day.', 'ඔයා හැමදාම පාඩම් කළ යුතුයි.'),
  Lesson('Must and Must Not', 'You must wear a helmet.', 'ඔයා අනිවාර්යයෙන්ම හිස්වැසුමක් පැළඳිය යුතුයි.'),
  Lesson('Prepositions - නිපාත', 'The cat is under the table.', 'පූසා මේසය යට ඉන්නවා.'),
  Lesson('Adjectives - විශේෂණ', 'This is a beautiful flower.', 'මේ ලස්සන මලක්.'),
  Lesson('Adverbs - ක්‍රියා විශේෂණ', 'She speaks slowly.', 'ඇය සෙමින් කතා කරනවා.'),
  Lesson('Comparisons - සැසඳීම්', 'My bag is bigger than yours.', 'මගේ බෑගය ඔයාගේ එකට වඩා ලොකුයි.'),
  Lesson('Polite English - ආචාරශීලී ඉංග්‍රීසි', 'Could you please help me?', 'කරුණාකර මට උදව් කරන්න පුළුවන්ද?'),
  Lesson('Making Invitations - ආරාධනා කිරීම', 'Would you like to join us?', 'ඔයා අපිත් එක්ක එකතු වෙන්න කැමතිද?'),
  Lesson('Making Appointments - හමුවීම් යොදාගැනීම', 'Can we meet tomorrow?', 'අපිට හෙට හමුවෙන්න පුළුවන්ද?'),
  Lesson('At the Hotel - හෝටලයේදී', 'I have a reservation.', 'මම කලින් කාමරයක් වෙන් කරගෙන තියෙනවා.'),
  Lesson('At the Airport - ගුවන් තොටුපළේදී', 'Where is the departure gate?', 'පිටත්වීමේ දොරටුව කොහෙද?'),
  Lesson('Emergencies - හදිසි අවස්ථා', 'Please call the police.', 'කරුණාකර පොලිසියට කතා කරන්න.'),
  Lesson('Safety - ආරක්ෂාව', 'Be careful on the road.', 'පාරේදී ප්‍රවේශම් වෙන්න.'),
  Lesson('Environment - පරිසරය', 'We must protect nature.', 'අපි ස්වභාවධර්මය ආරක්ෂා කළ යුතුයි.'),
  Lesson('Technology - තාක්ෂණය', 'Technology makes life easier.', 'තාක්ෂණය ජීවිතය පහසු කරනවා.'),
  Lesson('Education - අධ්‍යාපනය', 'Education is important.', 'අධ්‍යාපනය වැදගත්.'),
  Lesson('Goals - අරමුණු', 'I want to improve my English.', 'මට මගේ ඉංග්‍රීසි දියුණු කරගන්න ඕන.'),
  Lesson('Confidence - ආත්ම විශ්වාසය', 'Believe in yourself.', 'ඔයා ගැන විශ්වාස කරන්න.'),
  Lesson('Motivation - උනන්දුව', 'Never give up.', 'කවදාවත් උත්සාහය අත්හරින්න එපා.'),
  Lesson('Daily Conversation - දෛනික සංවාදය', 'What are you doing?', 'ඔයා මොකද කරන්නේ?'),
  Lesson('At the Market - පොළේදී', 'I want one kilo of bananas.', 'මට කෙසෙල් කිලෝ එකක් ඕන.'),
  Lesson('At the Bank - බැංකුවේදී', 'I want to open an account.', 'මට ගිණුමක් ආරම්භ කරන්න ඕන.'),
  Lesson('Making Plans - සැලසුම් කිරීම', 'Let us go together.', 'අපි එකට යමු.'),
  Lesson('Review - නැවත පුහුණුව', 'Practice makes you better.', 'පුහුණුවෙන් ඔයා තවත් දක්ෂ වෙනවා.'),
];

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5FF),
      appBar: AppBar(
        title: const Text(
          'English Lessons',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            child: const Column(
              children: [
                Text(
                  '📚 English පාඩම් 1–100',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'දිනපතා ටික ටික ඉගෙන ගනිමු!',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              itemCount: lessons.length,
              itemBuilder: (context, index) {
                final lesson = lessons[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 10),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(12),
                    leading: CircleAvatar(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white,
                      child: Text('${index + 1}'),
                    ),
                    title: Text(
                      'Lesson ${index + 1}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo,
                      ),
                    ),
                    subtitle: Text(
                      lesson.title,
                      style: const TextStyle(fontSize: 15),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.indigo,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LessonDetailPage(
                            number: index + 1,
                            lesson: lesson,
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LessonDetailPage extends StatelessWidget {
  final int number;
  final Lesson lesson;

  const LessonDetailPage({
    super.key,
    required this.number,
    required this.lesson,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F5FF),
      appBar: AppBar(
        title: Text('Lesson $number'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              lesson.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 35),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(22),
                child: Column(
                  children: [
                    const Text(
                      'ENGLISH',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      lesson.english,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(height: 40),
                    const Text(
                      'සිංහල තේරුම',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      lesson.sinhala,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 21),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(16),
              ),
              onPressed: () {
                if (number < lessons.length) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LessonDetailPage(
                        number: number + 1,
                        lesson: lessons[number],
                      ),
                    ),
                  );
                } else {
                  Navigator.pop(context);
                }
              },
              icon: const Icon(Icons.arrow_forward),
              label: Text(
                number < lessons.length
                    ? 'ඊළඟ පාඩම'
                    : 'පාඩම් අවසන් - ආපසු යන්න',
                style: const TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
