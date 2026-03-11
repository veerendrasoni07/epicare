import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart'; // Move equatable import here!
import 'package:habitrackerapp/Ai_chatbot/models/chat_message_model.dart';
import 'package:habitrackerapp/Ai_chatbot/repos/chat_repos.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatSuccessState(messages: [])) {
    on<ChatGenerateNewTextMessageEvent>(chatGenerateNewTextMessageEvent);

  }
  List<ChatMessageModel> messages = [];
  FutureOr<void> chatGenerateNewTextMessageEvent(
      ChatGenerateNewTextMessageEvent event, Emitter<ChatState> emit) async {
    // Add user message
    messages.add(ChatMessageModel(role: "user", parts: [
      ChatPartModel(text: event.inputMessage)
    ]));
    emit(ChatSuccessState(messages: messages));

    // Get AI response
    String aiResponse = await SkinRepo.chatTextGenerationRepo(messages);

    // Add AI message
    messages.add(ChatMessageModel(role: "model", parts: [
      ChatPartModel(text: aiResponse)
    ]));

    // Emit updated state with new message
    emit(ChatSuccessState(messages: messages));
  }
}
