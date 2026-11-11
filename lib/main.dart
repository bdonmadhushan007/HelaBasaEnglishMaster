
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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FF),
      appBar: AppBar(
        title: const Text(
          'Hela Basa English Master',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 25),
            const Text(
              'ආයුබෝවන්! 🙏',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'අද ඉඳන් English ඉගෙන ගමු!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 35),
            menuButton(
              context,
              '📚 English Lessons',
              'පාඩම් ඉගෙන ගන්න',
            ),
            menuButton(
              context,
              '📝 Vocabulary',
              'අලුත් වචන ඉගෙන ගන්න',
            ),
            menuButton(
              context,
              '🎯 English Quiz',
              'ප්‍රශ්නවලට පිළිතුරු දෙන්න',
            ),
            menuButton(
              context,
              '🗣️ Speaking Practice',
              'කතා කිරීම පුහුණු වෙන්න',
            ),
          ],
        ),
      ),
    );
  }

  Widget menuButton(
    BuildContext context,
    String title,
    String subtitle,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.indigo,
        ),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$title - ඉදිරියේදී ලබාදෙයි')),
          );
        },
      ),
    );
  }
}

