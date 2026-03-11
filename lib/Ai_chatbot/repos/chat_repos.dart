import 'package:dio/dio.dart';
import 'package:habitrackerapp/Ai_chatbot/models/chat_message_model.dart';
import 'package:habitrackerapp/util/constants.dart';

class SkinRepo {
  static Future<String> chatTextGenerationRepo(List<ChatMessageModel> previousMessages) async {
    Dio dio = Dio();

    try {
      final response = await dio.post(
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$apikey",
        data: {
          "contents": previousMessages.map((message) {
            return {
              "parts": message.parts.map((part) {
                return {"text": part.text};
              }).toList(),
              "role": message.role
            };
          }).toList(),
        },
      );

      // Check if the response has the expected data
      if (response.data != null && response.data["candidates"] != null && response.data["candidates"].isNotEmpty) {
        String aiResponse = response.data["candidates"][0]["content"]["parts"][0]["text"];
        return aiResponse;
      } else {
        return "No response from the AI model.";
      }
    } catch (e) {
      print("Error: $e");
      // Provide a more detailed error message for debugging
      return "Something went wrong! Please try again later.";
    }
  }
}
