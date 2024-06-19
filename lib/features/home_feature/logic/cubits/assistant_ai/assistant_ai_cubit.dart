import 'dart:io';

import 'package:ctrlvoice/core/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

part 'assistant_ai_state.dart';

class AssistantAiCubit extends Cubit<AssistantAiState> {
  AssistantAiCubit() : super(AssistantAiInitial());

  processPrompt(String prompt) async {
    emit(AssistantAiLoading());
    try {
      final apiKey = dotenv.env['API_KEY'];
      if (apiKey == null) {
        debugPrint('No \$API_KEY environment variable');
        exit(1);
      }
      final model = GenerativeModel(model: 'gemini-1.5-flash', apiKey: apiKey);
      final content = [Content.text(prompt + based)];
      final response = await model.generateContent(content);
      debugPrint(response.text);
      emit(AssistantAiSuccess(message: response.text!));
    } catch (e) {
      emit(AssistantAiFailure(message: e.toString()));
    }
  }
}
