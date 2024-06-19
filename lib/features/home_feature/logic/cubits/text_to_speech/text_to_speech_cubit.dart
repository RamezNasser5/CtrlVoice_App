import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'text_to_speech_state.dart';

class TextToSpeechCubit extends Cubit<TextToSpeechState> {
  TextToSpeechCubit() : super(TextToSpeechInitial());

  speakText() {
    emit(TextToSpeechLoading());
    try {} catch (e) {
      emit(TextToSpeechFailure(message: e.toString()));
    }
  }
}
