part of 'chat_bloc.dart';

sealed class ChatEvent{}

class ChatGenerateNewTextMessageEvent extends ChatEvent{
  final String inputMessage;

  ChatGenerateNewTextMessageEvent({required this.inputMessage});
}