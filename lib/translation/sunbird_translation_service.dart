import 'dart:convert';
import 'package:http/http.dart' as http;

class TranslationService {
  final String baseUrl = 'https://sunbird-ai-api-5bq6okiwgq-ew.a.run.app';
  final Map<String, String> headers = {
    "Authorization":
    "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJNYXJ0aW4gS2FsZW1hIiwiYWNjb3VudF90eXBlIjoiRnJlZSIsImV4cCI6NDg1NTU2Mjk1Nn0.hEOPnwwqeCv4TF_6y-WEW-sxQpLE_Du6Y4WB3DffFwc",
    "Content-Type": "application/json"
  };

  Future<String?> translateText(String textToTranslate, String targetLanguage) async {
    final Map<String, String> payload = {
      "source_language": "English",
      "target_language": targetLanguage, // Modify the target language as needed
      "text": textToTranslate,
    };

    try {
      final http.Response response = await http.post(
        Uri.parse('$baseUrl/tasks/translate'),
        headers: headers,
        body: json.encode(payload),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> translatedData = json.decode(response.body);
        final String translatedText = translatedData["text"];
        return translatedText;
      } else {
        print("Error: ${response.statusCode} ${response.body}");
        return null;
      }
    } catch (error) {
      print("Error: $error");
      return null;
    }
  }
}
