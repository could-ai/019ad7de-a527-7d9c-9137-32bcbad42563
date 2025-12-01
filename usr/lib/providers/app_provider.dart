import 'package:flutter/material.dart';
import '../models/app_data.dart';

class AppProvider with ChangeNotifier {
  // User State
  bool _isPremium = false;
  bool get isPremium => _isPremium;

  // Chat State
  final List<ChatMessage> _messages = [
    ChatMessage(
      id: 'welcome',
      text: 'Hello! I am Gemini, your AI consultation assistant. How can I help you today?',
      isUser: false,
      timestamp: DateTime.now(),
    ),
  ];
  List<ChatMessage> get messages => _messages;

  int _messageCount = 0;
  final int _freeLimit = 5;
  int get messageCount => _messageCount;
  int get freeLimit => _freeLimit;

  bool get canSendMessage => _isPremium || _messageCount < _freeLimit;

  // Actions
  void upgradeToPremium() {
    _isPremium = true;
    notifyListeners();
  }

  void sendMessage(String text) async {
    if (!canSendMessage) return;

    // Add user message
    _messages.add(ChatMessage(
      id: DateTime.now().toString(),
      text: text,
      isUser: true,
      timestamp: DateTime.now(),
    ));
    
    if (!_isPremium) {
      _messageCount++;
    }
    
    notifyListeners();

    // Simulate AI response
    await Future.delayed(const Duration(seconds: 1));
    
    String responseText = "I'm a simulated Gemini response. You asked: \"$text\". ";
    if (!_isPremium) {
      responseText += "You have used $_messageCount/$_freeLimit free messages.";
    }

    _messages.add(ChatMessage(
      id: DateTime.now().toString() + '_ai',
      text: responseText,
      isUser: false,
      timestamp: DateTime.now(),
    ));
    notifyListeners();
  }

  void clearChat() {
    _messages.clear();
    _messages.add(ChatMessage(
      id: 'welcome',
      text: 'Hello! I am Gemini, your AI consultation assistant. How can I help you today?',
      isUser: false,
      timestamp: DateTime.now(),
    ));
    notifyListeners();
  }
}
