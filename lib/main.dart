import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

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
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _open(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

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
                    subtitle: 'දිනපතා English කතා කිරීම පුහුණු වෙන්න (AI)',
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
                child: const Icon(Icons.school, color: Colors.white),
              ),
              const SizedBox(width: 12),
              const Text('HELA ENGLISH', style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            ]),
            const SizedBox(height: 22),
            const Text('ආයුබෝවන්! 🙏', style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.w900)),
            const SizedBox(height: 6),
            const Text('අද ඉඳන් English ඉගෙන ගමු!', style: TextStyle(
              color: Colors.white70, fontSize: 15)),
          ]),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _FeatureCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: blue.withOpacity(.06),
            blurRadius: 15,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: color.withOpacity(.12),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(icon, color: color, size: 26),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title, style: const TextStyle(
                        color: ink, fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(subtitle, style: TextStyle(
                        color: Colors.blueGrey.shade600, fontSize: 13)),
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios_rounded, size: 16, color: Colors.blueGrey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------- Additional Pages placeholders -----------------
class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('English Lessons')),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lessons[index].title),
            subtitle: Text('${lessons[index].english} -${lessons[index].sinhala}'),
          );
        },
      ),
    );
  }
}

class VocabularyPage extends StatelessWidget {
  const VocabularyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Vocabulary')),
      body: const Center(child: Text('Vocabulary Content Here')),
    );
  }
}

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('English Quiz')),
      body: const Center(child: Text('Quiz Content Here')),
    );
  }
}

// ----------------- AI Speaking Practice Page -----------------
class SpeakingPage extends StatefulWidget {
  const SpeakingPage({super.key});

  @override
  State<SpeakingPage> createState() => _SpeakingPageState();
}

class _SpeakingPageState extends State<SpeakingPage> {
  final TextEditingController _controller = TextEditingController();
  String _aiReply = "Hello! I am your AI English Teacher. Ask me anything to practice!";
  bool _isLoading = false;

  static const String apiKey = "YOUR_GEMINI_API_KEY"; // මෙතනට ඔයාගේ Gemini API Key එක දාන්න
  static const String url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$apiKey";

  void _sendMessage() async {
    String text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "contents": [
            {
              "role": "user",
              "parts": [{"text": "You are a friendly English teacher for Sinhala speakers. Answer the user simply and shortly in English: $text"}]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          _aiReply = data['candidates'][0]['content']['parts'][0]['text'];
        });
      } else {
        setState(() {
          _aiReply = "Error connecting to AI. Status code: ${response.statusCode}";
        });
      }
    } catch (e) {
      setState(() {
        _aiReply = "Error: $e";
      });
    } finally {
      setState(() {
        _isLoading = false;
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AI Speaking Practice"),
        backgroundColor: blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: blue.withOpacity(0.15)),
                  boxShadow: [
                    BoxShadow(
                      color: blue.withOpacity(0.05),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    )
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("🤖 AI Teacher:", style: TextStyle(fontWeight: FontWeight.bold, color: blue, fontSize: 16)),
           
