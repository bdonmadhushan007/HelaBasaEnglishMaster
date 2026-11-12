import 'dart:convert';
import 'package:http/http.dart' as http;

class AIService {
  static const String apiKey = "YOUR_GEMINI_API_KEY"; // ඔයාගේ Gemini API key එක මෙතනට දාන්න
  static const String url = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=$apiKey";

  static Future<String> getAIResponse(String prompt) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "contents": [
            {
              "role": "user",
              "parts": [{"text": "You are a helpful English teacher for Sinhala speakers. Answer simply: $prompt"}]
            }
          ]
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['candidates'][0]['content']['parts'][0]['text'];
      } else {
        return "Error: Could not connect to AI.";
      }
    } catch (e) {
      return "Error: $e";
    }
  }
}
