import 'package:flutter/material.dart';
import 'package:flutter_ai_toolkit/flutter_ai_toolkit.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Text("AI Chat"),
        ),
        body: LlmChatView(
            provider: GeminiProvider(
                model: GenerativeModel(
                    systemInstruction: Content.system('''
                        'Analyze the provided image and identify all food items present. List their names clearly and, if possible, specify the dish they belong to. Ensure accuracy and provide a confidence level for each identification.'
                        “Examine the provided image and identify the food items and dishes shown. Based on the dish, suggest a possible recipe with common ingredients and preparation steps. If multiple items are present, list each separately with a brief description.”
                        "Make the response brief"
                        "Return the response with provided image and mark the items in the image with name of the food item"
               '''),
                    model: 'gemini-1.5-flash',
                    apiKey: 'AIzaSyADF7Azkw2W0GknXDjK-PucKPWL9DE9dwY'))));
  }
}
