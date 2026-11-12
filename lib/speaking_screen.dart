import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'ai_service.dart'; // කලින් හදාපු ai_service.dart එක import කරගන්න

class SpeakingScreen extends StatefulWidget {
  @override
  _SpeakingScreenState createState() => _SpeakingScreenState();
}

class _SpeakingScreenState extends State<SpeakingScreen> {
  late stt.SpeechToText _speech;
  late FlutterTts _flutterTts;
  
  bool _isListening = false;
  String _userText = "Tap the mic and start speaking in English...";
  String _aiReply = "AI Tutor is ready to talk with you.";
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
    _flutterTts = FlutterTts();
    _configureTts();
  }

  // TTS (Text-to-Speech) settings
  void _configureTts() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.5); // කතා කරන වේගය ටිකක් මන්දගාමී කිරීම
    await _flutterTts.setVolume(1.0);
    await _flutterTts.setPitch(1.0);
  }

  // Mic එක On කරලා User කියන දේ අහගැනීම (Speech-to-Text)
  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (status) => print('onStatus: $status'),
        onError: (error) => print('onError: $error'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _userText = val.recognizedWords;
            if (val.hasConfidenceRating && val.confidence > 0) {
              // User කතා කරලා ඉවර වුණාම AI එකට send කරන්න
              _sendToAI(_userText);
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  // Gemini API එකට user text eka yawala response eka ganeema
  void _sendToAI(String prompt) async {
    if (prompt.isEmpty) return;
    
    setState(() {
      _isLoading = true;
      _isListening = false;
    });
    _speech.stop();

    // AIService eken response eka gannawa
    String response = await AIService.getAIResponse(prompt);

    setState(() {
      _aiReply = response;
      _isLoading = false;
    });

    // AI eka dunn uththara voice eken kiyanawa
    _speakAIResponse(response);
  }

  // AI Response eka Voice eken play kirima
  void _speakAIResponse(String text) async {
    await _flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AI Speaking Practice"),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AI Response Box
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade50,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.indigo.shade200),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("🤖 AI Tutor:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo)),
                      SizedBox(height: 8),
                      _isLoading 
                        ? CircularProgressIndicator()
                        : Text(_aiReply, style: TextStyle(fontSize: 18, color: Colors.black87)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            
            // User Spoken Text Box
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("🗣️ You said:", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
                    SizedBox(height: 8),
                    Text(_userText, style: TextStyle(fontSize: 16, color: Colors.black54)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),

            // Mic Button (Record / Stop)
            FloatingActionButton.large(
              onPressed: _listen,
              backgroundColor: _isListening ? Colors.red : Colors.indigo,
              child: Icon(_isListening ? Icons.mic : Icons.mic_none, size: 36, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              _isListening ? "Listening... Tap to stop" : "Tap Mic to Speak",
              style: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
