import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';

part 'text_to_speech_state.dart';

class TextToSpeechCubit extends Cubit<TextToSpeechState> {
  TextToSpeechCubit() : super(TextToSpeechInitial());

  FlutterTts flutterTts = FlutterTts();

  speakText(String prompt) async {
    emit(TextToSpeechLoading());
    try {
      String newPrompt = prompt.replaceAll('*', '');
      await flutterTts.speak(newPrompt);
      emit(TextToSpeechSuccess());
    } catch (e) {
      emit(TextToSpeechFailure(message: e.toString()));
    }
  }

  stopSpeakText() async {
    emit(TextToStopSpeechLoading());
    try {
      await flutterTts.stop();
      emit(TextToStopSpeechSuccess());
    } catch (e) {
      emit(TextToStopSpeechFailure(message: e.toString()));
    }
  }
}
